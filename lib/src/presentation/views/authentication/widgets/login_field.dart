import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class LoginField extends StatefulWidget {
  final void Function(String)? onChanged;
  final void Function(String)? onCountryCodeChanged;
  final void Function()? onTap;
  final GlobalKey<FormState> formKey;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  
  final ValueNotifier<bool>? hasPhoneNumberError;


  const LoginField({
    super.key,
    required this.formKey,
    this.onChanged,
    this.onCountryCodeChanged,
    this.controller,
    this.focusNode,
    this.onTap,

    this.hasPhoneNumberError,
  });

  @override
  State<LoginField> createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  late final TextEditingController _controller;

  late final FocusNode _focusNode;
  
  final ValueNotifier<String?> _errorNotifier = ValueNotifier(null);
  bool _hasTyped = false;


  @override
  void initState() {
    super.initState();

    _controller = widget.controller ?? TextEditingController();

    _focusNode = widget.focusNode ?? FocusNode();


    _controller.addListener(() {
      final value = _controller.text;
      if (!_hasTyped && value.isNotEmpty) _hasTyped = true;

      final error = _validatePhoneNumber(value);
      _errorNotifier.value = _hasTyped ? error : null;
      widget.hasPhoneNumberError?.value = error != null;

      widget.onChanged?.call(value);
    });

   

  widget.onCountryCodeChanged?.call('+971');
  }

  @override
  void dispose() {
    if (widget.controller == null) _controller.dispose();
    if (widget.focusNode == null) _focusNode.dispose();
  
    _errorNotifier.dispose();
    super.dispose();
  }

String? _validatePhoneNumber(String value) {
  if (value.isEmpty) return null;

  // UAE only: must be 9 digits, starting with 5
  if (value.length != 9) {
    return 'Phone number must be 9 digits';
  }
  if (!value.startsWith('5')) {
    return 'UAE mobile numbers should start with 5';
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
                    Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    ClipRRect(
      borderRadius: BorderRadius.circular(12.dp),
      child: Image.asset(
       'packages/country_code_picker/flags/ae.png', // UAE flag image (from your assets or country_code_picker package)
       
        width: 24.dp,
        height: 24.dp,
        fit: BoxFit.fill,
      ),
    ),
    Gap(5.dp),
    Text(
      '+971',
      style: AppTypography.sfProRoundedSemiBold.copyWith(
        fontSize: 16.sp,
        color: AppColors.countrycodeColor,
      ),
    ),
  ],
),

                      Gap(8.dp),
                      Expanded(
                        child: TextFormField(
                          controller: _controller,
                          focusNode: _focusNode,
                          autofocus: true,
                          maxLength: 9,
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
                    if (error == null || error.isEmpty) {
                      return const SizedBox.shrink();
                    }
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
