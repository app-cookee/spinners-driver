import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/app_router/app_router.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/constants/app_strings.dart';
import 'package:spinners_driver/src/presentation/views/authentication/widgets/otp_countdown_widget.dart';
import 'package:spinners_driver/src/presentation/views/authentication/widgets/otp_field_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/custom_keyboard.dart';
import 'package:spinners_driver/src/presentation/views/widgets/primary_button_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/the_toast_widget.dart';

import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key, required this.phoneNumber, required this.countryCode});
  final String phoneNumber;
  final String countryCode;

  @override
  State<OtpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<OtpScreen> {
  final formKey = GlobalKey<FormState>();
  final FocusNode _focusNode = FocusNode();

  ValueNotifier<String> otpListener = ValueNotifier('');
  final ValueNotifier<bool> showKeyboard = ValueNotifier(false);
  final ScrollController _scrollController = ScrollController();

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
  }

  @override
  void dispose() {
    _focusNode.dispose();
    otpListener.dispose();
    showKeyboard.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onKeyPressed(String value) {
    String current = otpListener.value;
    if (value == 'backspace') {
      if (current.isNotEmpty) {
        current = current.substring(0, current.length - 1);
      }
    } else if (current.length < 6) {
      // OTP is typically 6 digits
      current += value;
    }
    otpListener.value = current;
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
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                _focusNode.unfocus();
                showKeyboard.value = false;
              },
              child: SizedBox(
                height: 100.h,
                width: 100.w,
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    Image.asset(fit: BoxFit.fill, AppImages.loginSpinBg),
                    SafeArea(
                      child: Column(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              controller: _scrollController,
                              padding: EdgeInsets.only(bottom: 21.dp),
                              child: Column(
                                children: [
                                  Gap(14.dp),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Gap(16.dp),
                                      Padding(
                                          padding: EdgeInsets.only(top: 7.h),
                                          child: SizedBox(
                                            width: 60.w,
                                            child: Text(
                                              maxLines: 2,
                                              'Verify Your Number',
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
                                        child: Text(
                                          'We\'ve sent a 6-digit code to ${widget.countryCode} XXXXXXXX',
                                          style: AppTypography.sfProRoundedMedium.copyWith(
                                            fontSize: 12.sp,
                                            color: AppColors.textGrey,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Gap(10.h),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10.dp),
                                    child: ValueListenableBuilder<String>(
                                      valueListenable: otpListener,
                                      builder: (context, otp, child) {
                                        return OtpFieldWidget(
                                          otpValue: otp,
                                          onTap: () {
                                            if (!showKeyboard.value) {
                                              showKeyboard.value = true;
                                            }
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  Gap(12.dp),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Gap(16.dp),
                                      OTPCountdownWidget(
                                        initialCountdown:59,
                                        onResend: () {
                                          otpListener.value = '';
                                        },
                                      ),
                                    ],
                                  ),
                                  Gap(10.h),
                                  ValueListenableBuilder(
                                    valueListenable: otpListener,
                                    builder: (context, value, child) => Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 16.dp),
                                      child: PrimaryButtonWidget(
                                        text: AppStrings.verifyButtonText,
                                        onPressed: () {
                                          context.router.pushAndPopUntil(
                AppBottomNavigationRoute(selectedIndex: 0),
                predicate: (_) => false,
              );
                                          // onButtonSubmit(otpp: value);
                                        },
                                      ),
                                    ),
                                  ),
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
                    Positioned(
                      top: 35.dp,
                      left: 5.dp,
                      child: IconButton(
                        onPressed: () {
                          if (isKeyboardVisible) {
                            _focusNode.unfocus();
                            showKeyboard.value = false;
                          } else {
                            context.router.pop();
                          }
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 20.dp,
                          color: AppColors.countrycodeColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void onButtonSubmit({required String otpp}) {
    if (otpp.length != 6) {
      TheToast.show(message: 'Please enter a 6 digit OTP', context: context);
    } else {
      // context.read<AuthBloc>().add(AuthEvent.verifyOtp(
      //     otp: otpp,
      //     phoneNumber: widget.phoneNumber,
      //     referralCode: widget.referralCode));
    }
  }
}
