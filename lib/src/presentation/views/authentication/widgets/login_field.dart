import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:spinners_laundry/app/theme/app_colors.dart';
import 'package:spinners_laundry/app/theme/app_typography.dart';
import 'package:spinners_laundry/src/presentation/utils/form_validators.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class LoginField extends StatefulWidget {
  final void Function(String)? onChanged;
  final void Function(String)? onCountryCodeChanged;
  final void Function()? onTap;
  final GlobalKey<FormState> formKey;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool showRefferal;
  final void Function(String)? onReferralCodeChanged;
  final ValueNotifier<bool>? hasPhoneNumberError;


  const LoginField({
    super.key,
    required this.formKey,
    this.onChanged,
    this.onCountryCodeChanged,
    this.controller,
    this.focusNode,
    this.onTap,
    this.onReferralCodeChanged, required this.showRefferal,
    this.hasPhoneNumberError,
  });

  @override
  State<LoginField> createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  late final TextEditingController _controller;
  late final TextEditingController _referralController;
  late final FocusNode _focusNode;
  late final FocusNode _referralFocusNode;
  final ValueNotifier<String?> _errorNotifier = ValueNotifier(null);
  bool _hasTyped = false;
  CountryCode _selectedCountry = CountryCode.fromCountryCode('AE');

  @override
  void initState() {
    super.initState();

    _controller = widget.controller ?? TextEditingController();
    _referralController = TextEditingController();
    _focusNode = widget.focusNode ?? FocusNode();
    _referralFocusNode = FocusNode();

    _controller.addListener(() {
      final value = _controller.text;
      if (!_hasTyped && value.isNotEmpty) _hasTyped = true;

      final error = _validatePhoneNumber(value);
      _errorNotifier.value = _hasTyped ? error : null;
      widget.hasPhoneNumberError?.value = error != null;

      widget.onChanged?.call(value);
    });

    _referralController.addListener(() {
      widget.onReferralCodeChanged?.call(_referralController.text);
    });

    widget.onCountryCodeChanged!(_selectedCountry.dialCode.toString());
  }

  @override
  void dispose() {
    if (widget.controller == null) _controller.dispose();
    if (widget.focusNode == null) _focusNode.dispose();
    _referralController.dispose();
    _referralFocusNode.dispose();
    _errorNotifier.dispose();
    super.dispose();
  }

  String? _validatePhoneNumber(String value) {
    if (value.isEmpty) return null;

    // Get expected length based on country
    int expectedLength = _getExpectedLengthForCountry(_selectedCountry.code!);

    if (value.length < expectedLength) {
      return 'Phone number must be $expectedLength digits';
    }

    if (value.length > expectedLength) {
      return 'Phone number cannot exceed $expectedLength digits';
    }

    // Additional validation based on country
    switch (_selectedCountry.code) {
      case 'AE':
        return _validateUAEPhone(value);
      case 'IN':
        return TextFieldValidation.mobileValidateIndia(value);
      case 'US':
      case 'CA':
        return _validateUSCanadaPhone(value);
      case 'GB':
        return _validateUKPhone(value);
      default:
        return null;
    }
  }

  String? _validateUAEPhone(String value) {
  if (value.length != 9) {
    return 'Phone number must be 9 digits';
  }
  // UAE mobile numbers typically start with 5
  if (!value.startsWith('5')) {
    return 'UAE mobile numbers should start with 5';
  }
  return null;
}

  int _getExpectedLengthForCountry(String countryCode) {
    switch (countryCode) {
      case 'AE':
        return 9;
      case 'IN':
        return 10;
      case 'US':
      case 'CA':
        return 10;
      case 'GB':
        return 11;
      case 'AU':
        return 9;
      case 'DE':
        return 11;
      case 'FR':
        return 10;
      case 'JP':
        return 11;
      case 'BR':
        return 11;
      case 'CN':
        return 11;
      default:
        return 10;
    }
  }

  String? _validateUSCanadaPhone(String value) {
    if (value.length != 10) {
      return 'Phone number must be 10 digits';
    }
    // US/Canada numbers can't start with 0 or 1
    if (value.startsWith('0') || value.startsWith('1')) {
      return 'Invalid phone number format';
    }
    return null;
  }

  String? _validateUKPhone(String value) {
    if (value.length != 11) {
      return 'Phone number must be 11 digits';
    }
    // UK mobile numbers typically start with 7
    if (!value.startsWith('7')) {
      return 'UK mobile numbers should start with 7';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.disabled,
      key: widget.formKey,
      child: Column(
        children: [
          // Phone Number Field
          Container(
            padding: EdgeInsets.all(12.dp),
            margin: EdgeInsets.symmetric(horizontal: 16.dp),
            width: context.screenType == ScreenType.mobile ? 100.h : 328.dp,
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(
                  color: AppColors.loginFieldBorderColor, width: 1.dp),
              borderRadius: BorderRadius.circular(12.dp),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Country Code Picker
                      CountryCodePicker(
                        onChanged: (CountryCode countryCode) {
                          setState(() {
                            widget.onCountryCodeChanged!(countryCode.dialCode.toString());
                            _selectedCountry = countryCode;
                            // Clear validation error when country changes
                            _errorNotifier.value = null;
                            _hasTyped = false;
                          });
                        },
                        initialSelection: 'AE', // Change from 'IN' to 'AE'
                        favorite: const ['+971', 'AE', '+91', 'IN', '+1', 'US'],
                        showCountryOnly: false,
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                        textStyle: AppTypography.sfProRoundedSemiBold.copyWith(
                          fontSize: 16.sp,
                          color: AppColors.countrycodeColor,
                        ),
                        dialogTextStyle:
                            AppTypography.sfProRoundedMedium.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.black1,
                        ),
                        searchStyle: AppTypography.sfProRoundedMedium.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.black1,
                        ),
                        flagWidth: 20.dp,
                        padding: EdgeInsets.zero,
                        showFlag: true,
                        showDropDownButton: true,
                        enabled: true,
                        hideMainText: false,
                        showFlagMain: true,
                        flagDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.dp),
                        ),
                        builder: (CountryCode? countryCode) {
                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.dp),
                                child: Image.asset(
                                  countryCode!.flagUri!,
                                  package: 'country_code_picker',
                                  width: 24.dp,
                                  height: 24.dp,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Gap(5.dp),
                              Text(
                                countryCode.dialCode!,
                                style:
                                    AppTypography.sfProRoundedSemiBold.copyWith(
                                  fontSize: 16.sp,
                                  color: AppColors.countrycodeColor,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: AppColors.lightGrey,
                                size: 20.dp,
                              ),
                            ],
                          );
                        },
                      ),
                      Gap(8.dp),
                      Expanded(
                        child: TextFormField(
                          controller: _controller,
                          focusNode: _focusNode,
                          autofocus: true,
                          maxLength: _getExpectedLengthForCountry(
                              _selectedCountry.code!),
                          keyboardType: TextInputType.none,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          validator: (value) {
                            final error = _validatePhoneNumber(value ?? '');
                            _errorNotifier.value = _hasTyped ? error : null;
                            widget.hasPhoneNumberError?.value = error != null;
                            return _hasTyped && error != null ? ' ' : null;
                          },
                          decoration: InputDecoration(
                            isDense: true,
                            counterText: '',
                            hintText: 'Phone Number',
                            hintStyle:
                                AppTypography.sfProRoundedRegular.copyWith(
                              fontSize: 16.sp,
                              color: AppColors.countrycodeColor,
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 8.dp),
                            border: InputBorder.none,
                            errorStyle: const TextStyle(
                                height: 0, color: Colors.transparent),
                          ),
                          style: AppTypography.sfProRoundedBold.copyWith(
                            fontSize: 16.sp,
                            color: AppColors.black1,
                          ),
                          cursorColor: Colors.black,
                          cursorHeight: 16.sp,
                          onTap: widget.onTap,
                        ),
                      ),
                    ],
                  ),
                ),
                ValueListenableBuilder<String?>(
                  valueListenable: _errorNotifier,
                  builder: (context, error, _) {
                    if (error == null || error.isEmpty)
                      return const SizedBox.shrink();
                    return Padding(
                      padding: EdgeInsets.only(top: 4.dp),
                      child: Text(
                        error,
                        style: AppTypography.sfProRoundedMedium.copyWith(
                          fontSize: 11.sp,
                          height: 1.2,
                          color: AppColors.redColor,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Gap(8.dp),
          // Referral Code Field
          Container(
            padding: EdgeInsets.all(12.dp),
            margin: EdgeInsets.symmetric(horizontal: 16.dp),
            width: context.screenType == ScreenType.mobile ? 100.h : 328.dp,
            decoration: BoxDecoration(
              color: widget.showRefferal ? AppColors.white : AppColors.grey,
              border: Border.all(
                  color: AppColors.loginFieldBorderColor, width: 1.dp),
              borderRadius: BorderRadius.circular(12.dp),
            ),
            child: TextFormField(
              enabled: widget.showRefferal,
              controller: _referralController,
              focusNode: _referralFocusNode,
              maxLength: 20,
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.characters,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z0-9]')),
                UpperCaseTextFormatter(),
              ],
              decoration: InputDecoration(
                isDense: true,
                counterText: '',
                hintText: 'Referral Code (Optional)',
                hintStyle: AppTypography.sfProRoundedRegular.copyWith(
                  fontSize: 16.sp,
                  color: AppColors.countrycodeColor,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 8.dp),
                border: InputBorder.none,
              ),
              style: AppTypography.sfProRoundedBold.copyWith(
                fontSize: 16.sp,
                color: AppColors.black1,
              ),
              cursorColor: Colors.black,
              cursorHeight: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}

// Custom formatter to convert text to uppercase
class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
