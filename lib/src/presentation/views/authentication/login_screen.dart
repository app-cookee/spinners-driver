import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/constants/app_strings.dart';
import 'package:spinners_driver/src/presentation/utils/debouncer.dart';
import 'package:spinners_driver/src/presentation/views/authentication/widgets/login_field.dart';
import 'package:spinners_driver/src/presentation/views/widgets/custom_keyboard.dart';
import 'package:spinners_driver/src/presentation/views/widgets/primary_button_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  final ValueNotifier<String> phoneNumberListener = ValueNotifier('');
  final ValueNotifier<String> countryCodeListener = ValueNotifier('');
  final ValueNotifier<bool> showKeyboard = ValueNotifier(false);
  final ScrollController _scrollController = ScrollController();
  final ValueNotifier<String> referralCodeListener = ValueNotifier('');
  final debouncer = Debouncer();
  final ValueNotifier<bool> hasPhoneError = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      showKeyboard.value = _focusNode.hasFocus;
    });
    showKeyboard.addListener(() {
      if (showKeyboard.value) {
        Future.delayed(const Duration(milliseconds: 300), () {
          if (_scrollController.hasClients) {
            _scrollController.animateTo(
              _scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
          }
        });
      }
    });
    phoneNumberListener.addListener(() {
      final phone = phoneNumberListener.value.trim();
      if (phone.length >= 9 && phone.length <= 15) {
        debouncer.run(() {});
      }
    });

    referralCodeListener.addListener(() {
      final referral = referralCodeListener.value.trim();
      if (referral.length >= 10) {
        debouncer.run(() {});
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    phoneNumberListener.dispose();
    showKeyboard.dispose();
    _scrollController.dispose();
    referralCodeListener.dispose();
    super.dispose();
  }

  void _onKeyPressed(String value) {
    String current = phoneNumberListener.value;
    if (value == 'backspace') {
      if (current.isNotEmpty) {
        current = current.substring(0, current.length - 1);
      }
    } else if (current.length < 15) {
      // Changed from 10 to 15 for international numbers
      current += value;
    }
    phoneNumberListener.value = current;
    _controller.text = current;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: showKeyboard,
        builder: (context, isKeyboardVisible, child) {
          return PopScope(
              canPop: !isKeyboardVisible,
              onPopInvokedWithResult: (didPop, result) {
                if (isKeyboardVisible && !didPop) {
                  // If keyboard is showing and pop was prevented, hide the keyboard
                  _focusNode.unfocus();
                  showKeyboard.value = false;
                }
              },
              child:
                  // BlocBuilder<NetworkBloc, NetworkState>(
                  //   builder: (context, state) {
                  //     return
                  Scaffold(
                resizeToAvoidBottomInset: false,
                body: _buildBody(
                    // state
                    ),
              )
              // },
              // ),
              );
        });
  }

  Widget _buildBody(
      // NetworkState state
      ) {
    // if (state == const NetworkState.success()) {
    return _loginBody();
    // } else {
    //   return const Center(
    //     child: NoNetworkWidget(),
    //   );
    // }
  }

  Widget _loginBody() {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        _focusNode.unfocus();
        showKeyboard.value = false;
      },
      child: Stack(
        children: [
          Positioned.fill(child: Image.asset(AppImages.loginSpinBg, fit: BoxFit.fill)),
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    padding: EdgeInsets.only(bottom: 21.dp),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Gap(16.dp),
                            Padding(
                                padding: EdgeInsets.only(top: 7.h),
                                child: SizedBox(
                                  width: 50.w,
                                  child: Text(
                                    maxLines: 2,
                                    'Let\'s get started',
                                    style: AppTypography.ruskaDisplayRegular.copyWith(
                                      fontSize: 32.sp,
                                      color: AppColors.primary950,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        Gap(12.dp),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.dp),
                              child: SizedBox(
                                width: 40.w,
                                child: Text(
                                  AppStrings.signInText,
                                  style: AppTypography.sfProRoundedMedium.copyWith(
                                    fontSize: 12.sp,
                                    color: AppColors.textGrey,
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLines: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Gap(48.dp),
                        Padding(
                          padding: EdgeInsets.only(left: 16.dp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                AppStrings.loginFieldLabelText,
                                style: AppTypography.sfProRoundedMedium.copyWith(
                                  color: AppColors.textGrey,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Gap(6.dp),
                        LoginField(
                          showRefferal: false,
                          formKey: formKey,
                          controller: _controller,
                          focusNode: _focusNode,
                          onChanged: (value) {
                            // Add this callback
                            phoneNumberListener.value = value;
                          },
                          onReferralCodeChanged: (value) {
                            // Add this callback
                            referralCodeListener.value = value;
                          },
                          onCountryCodeChanged: (p0) {
                            countryCodeListener.value = p0;
                          },
                          onTap: () {
                            if (!_focusNode.hasFocus) {
                              _focusNode.requestFocus();
                            } else {
                              _focusNode.unfocus();
                              Future.delayed(const Duration(milliseconds: 100), () {
                                _focusNode.requestFocus();
                              });
                            }
                            showKeyboard.value = true;
                          },
                          hasPhoneNumberError: hasPhoneError,
                        ),
                        Gap(66.dp),
                        buildPrivacyPolicyText(),
                        Gap(8.dp),
                        ValueListenableBuilder(
                            valueListenable: phoneNumberListener,
                            builder: (context, value, child) => ValueListenableBuilder(
                                  valueListenable: referralCodeListener, // Add nested ValueListenableBuilder
                                  builder: (context, referralValue, child) => Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16.dp),
                                    child: PrimaryButtonWidget(
                                      text: AppStrings.loginButtonText,
                                      onPressed: () {},
                                    ),
                                  ),
                                )),
                      ],
                    ),
                  ),
                ),
                ValueListenableBuilder<bool>(
                  valueListenable: showKeyboard,
                  builder: (_, visible, __) => visible
                      ? Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomKeyboard(onKeyPressed: _onKeyPressed),
                          ],
                        )
                      : const SizedBox.shrink(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onButtonSubmit(String phoneNumber, String referralCode) {
    // print('Phone: $phoneNumber');
    // print('Referral Code: $referralCode');
  }
}

Widget buildPrivacyPolicyText() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.dp),
    child: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: AppTypography.sfProRoundedRegular.copyWith(
          fontSize: 12.sp,
          color: AppColors.grey1Color,
        ),
        children: [
          TextSpan(
            text: 'By continuing, you agree to our ',
            style: AppTypography.sfProRoundedRegular.copyWith(
              fontSize: 12.sp,
              color: AppColors.grey1Color,
            ),
          ),
          TextSpan(
            text: 'Terms of Service',
            style: AppTypography.sfProRoundedRegular.copyWith(
              fontSize: 12.sp,
              color: AppColors.textGrey,
            ),
          ),
          TextSpan(
            text: ' and ',
            style: AppTypography.sfProRoundedRegular.copyWith(
              fontSize: 12.sp,
              color: AppColors.grey1Color,
            ),
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: AppTypography.sfProRoundedRegular.copyWith(
              fontSize: 12.sp,
              color: AppColors.textGrey,
            ),
          ),
          TextSpan(
            text: '.',
            style: AppTypography.sfProRoundedRegular.copyWith(
              fontSize: 12.sp,
              color: AppColors.grey1Color,
            ),
          ),
        ],
      ),
    ),
  );
}
