import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class SecondaryButtonWidget extends StatefulWidget {
  const SecondaryButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.width,
    this.height,
    this.padding,
    this.style,
    this.shape,
    this.bordercolor,
    this.isLoading = false,
    this.isEnabled = true,
    this.isShadowNeeded = true,
    this.photoicon,
    this.leadingIcon,
    this.buttonBgImage,
    this.fit,
  });

  final Function() onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final TextStyle? style;
  final double? shape;
  final Color? bordercolor;
  final bool isLoading;
  final bool isEnabled;
  final bool isShadowNeeded;
  final String? photoicon;
  final Widget? leadingIcon;
  final String? buttonBgImage;
  final BoxFit? fit;
  @override
  State<SecondaryButtonWidget> createState() => _SecondaryButtonWidgetState();
}

class _SecondaryButtonWidgetState extends State<SecondaryButtonWidget> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> shadowAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.95,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    shadowAnimation = Tween<double>(
      begin: 8.0,
      end: 4.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onTapDown(TapDownDetails details) {
    if (widget.isEnabled && !widget.isLoading) {
      _animationController.forward();
    }
  }

  void _onTapUp(TapUpDetails details) {
    if (widget.isEnabled && !widget.isLoading) {
      _animationController.reverse();
    }
  }

  void _onTapCancel() {
    if (widget.isEnabled && !widget.isLoading) {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    // final kSize = MediaQuery.of(context).size;

    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: AnimatedContainer(
              width: widget.isLoading ? 40.dp : widget.width ?? 100.w,
              height: widget.isLoading ? 40.dp : widget.height ?? 56.dp,
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                color: widget.backgroundColor ?? AppColors.primaryColor,
                borderRadius: BorderRadius.circular(widget.isLoading ? 30 : 12.dp),
                border: Border.all(color: widget.bordercolor ?? AppColors.primaryColor)
              ),
              // padding: EdgeInsets.all(5.dp), // 5-6 pixels padding
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(widget.shape ?? 12),
                  onTap: widget.isEnabled && !widget.isLoading ? widget.onPressed : null,
                  onTapDown: _onTapDown,
                  onTapUp: _onTapUp,
                  onTapCancel: _onTapCancel,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (widget.isLoading)
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SpinKitCircle(
                            color: AppColors.white,
                            size: 20.0,
                          ),
                        )
                      else
                        Row(
                          children: [
                            if (widget.leadingIcon != null)
                              Padding(
                                padding: EdgeInsets.only(right: 8.dp),
                                child: widget.leadingIcon!,
                              ),
                            Text(
                              widget.text,
                              textAlign: TextAlign.center,
                              style: widget.style ??
                                  AppTypography.sfProRoundedSemiBold.copyWith(
                                    color: widget.textColor ?? AppColors.white,
                                    fontSize: 16.sp,
                                  ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              )),
        );
      },
    );
  }
}
