import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class CustomDropDownMenuItem {
  final String value;
  final String label;
  final String? useImg;
  final Color?imageColor;
  CustomDropDownMenuItem({
    required this.value,
    required this.label,
    this.useImg,
    this.imageColor
  });
}

class CustomDropDownWidget extends StatefulWidget {
  const CustomDropDownWidget({
    super.key,
    required this.onChanged,
    required this.text,
    required this.hint,
    this.isLoading = false,
    this.textstyle,
    this.labelstyle,
    required this.items,
    this.dropValueFontSize,
    this.height,
    this.dropDownIcon,
    this.onDropdownStateChanged,
  });

  final Function(CustomDropDownMenuItem) onChanged;
  final String text;
  final String hint;
  final double? dropValueFontSize;
  final TextStyle? textstyle;
    final TextStyle? labelstyle;
  final bool isLoading;
  final List<CustomDropDownMenuItem> items;
  final double? height;
  final String? dropDownIcon;
  final Function(bool)? onDropdownStateChanged;

  @override
  State<CustomDropDownWidget> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDownWidget> {
  ValueNotifier<CustomDropDownMenuItem?> dropValue = ValueNotifier<CustomDropDownMenuItem?>(null);
  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  bool isDropdownOpen = false;
  bool _isMounted = true;

  @override
  void initState() {
    super.initState();
    if (dropValue.value != null) {
      widget.onChanged(dropValue.value!);
    }
  }

  @override
  void dispose() {
    _isMounted = false;
    if (_overlayEntry != null) {
      _overlayEntry!.remove();
      _overlayEntry = null;
    }
    super.dispose();
  }

  void _removeOverlay() {
    if (_overlayEntry != null) {
      _overlayEntry!.remove();
      _overlayEntry = null;
    }
    if (_isMounted) {
      setState(() {
        isDropdownOpen = false;
      });
      widget.onDropdownStateChanged?.call(false);
    }
  }

  void _toggleDropdown(BuildContext context) {
    if (!_isMounted) return;

    if (isDropdownOpen) {
      _removeOverlay();
    } else {
      _createOverlay(context);
      setState(() {
        isDropdownOpen = true;
      });
      widget.onDropdownStateChanged?.call(true);
    }
  }

  void _createOverlay(BuildContext context) {
    if (!_isMounted) return;

    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    _overlayEntry = OverlayEntry(
      builder: (context) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: _removeOverlay,
        child: Stack(
          children: [
            Positioned(
              width: size.width,
              child: CompositedTransformFollower(
                link: _layerLink,
                showWhenUnlinked: false,
                offset: Offset(0, size.height - 10.dp), //50
                child: Material(
                  color: Colors.transparent,
                  child: GestureDetector(
                    onTap: () {}, // Prevent tap from propagating
                    child: Container(
                      margin: const EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(6.dp),
                        border: Border.all(color: AppColors.loginFieldBorderColor),
                      ),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: 200.dp, // Maximum height for the dropdown
                        ),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          children: widget.items
                              .map((CustomDropDownMenuItem item) => ListTile(
                                    leading: item.useImg != null
                                        ? Image.asset(
                                            item.useImg!,
                                            height: 20.dp,
                                            width: 20.dp,
                                            color: item.imageColor,
                                          )
                                        : const SizedBox.shrink(),
                                    onTap: () {
                                      if (_isMounted) {
                                        dropValue.value = item;
                                        widget.onChanged(item);
                                        _removeOverlay();
                                      }
                                    },
                                    title: Text(
                                      item.label,
                                      style: AppTypography.sfProRoundedMedium.copyWith(
                                        fontSize: 14.sp,
                                        color: AppColors.neutral500,
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    if (_isMounted) {
      Overlay.of(context).insert(_overlayEntry!);
    }
  }

  @override
  Widget build(BuildContext context) {
    // final kSize = MediaQuery.of(context).size;
    return ValueListenableBuilder<CustomDropDownMenuItem?>(
      valueListenable: dropValue,
      builder: (context, value, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.text.isNotEmpty) Text(widget.text, style: widget.textstyle ?? AppTypography.sfProRoundedMedium.copyWith(fontSize: 16.sp, color: AppColors.textGrey)),
            Gap(6.dp),
            CompositedTransformTarget(
              link: _layerLink,
              child: GestureDetector(
                onTap: () => _toggleDropdown(context),
                child: Container(
                  height: widget.height ?? 48.dp,
                  padding: EdgeInsets.only(bottom: 1.dp, right: 1.dp),
                  decoration: BoxDecoration(
                    color: AppColors.grey1,
                    borderRadius: BorderRadius.circular(12.dp),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(1.dp),
                    decoration: BoxDecoration(
                      color: AppColors.loginFieldBorderColor,
                      borderRadius: BorderRadius.circular(12.dp),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.dp),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12.dp),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.05),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              if (dropValue.value?.useImg != null)
                                Padding(
                                  padding: EdgeInsets.only(right: 8.dp),
                                  child: Image.asset(
                                    dropValue.value!.useImg!,
                                    height: 20.dp,
                                    width: 20.dp,
                                    color: dropValue.value?.imageColor,
                                  ),
                                ),
                              Text(
                                dropValue.value?.label ?? widget.hint,
                                style:widget.labelstyle?? AppTypography.sfProRoundedMedium.copyWith(
                                  fontSize: widget.dropValueFontSize ?? 16.sp,
                                  color: dropValue.value != null ? AppColors.neutral950 : AppColors.neutral950,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            widget.dropDownIcon ?? AppImages.arrowDownIcon,
                            height: 20.dp,
                            width: 20.dp,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // SizedBox(height: kSize.height * 0.02),
          ],
        );
      },
    );
  }
}
