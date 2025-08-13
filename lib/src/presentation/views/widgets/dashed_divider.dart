import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class DashedDivider extends StatelessWidget {
  const DashedDivider({
    super.key,
    this.color = const Color(0xFFE0E0E0),
    this.strokeWidth = 1,
    this.dashPattern = const [3, 4],
    this.options,
    this.child,
    this.borderRadius, 
    this.isRoundedRectangle = false,
  });

  final Color color;
  final double strokeWidth;
  final List<double> dashPattern;
  final DottedBorderOptions? options;
  final Widget? child;

  
  final bool isRoundedRectangle;

  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    final effectiveOptions = options ??
        (isRoundedRectangle
            ? RoundedRectDottedBorderOptions(padding: EdgeInsets.zero,
                strokeWidth: strokeWidth,
                dashPattern: dashPattern,
                color: color,
                radius:Radius.circular(borderRadius??12.dp)
              )
            : CustomPathDottedBorderOptions(padding: EdgeInsets.zero,
                customPath: (size) => Path()
                  ..moveTo(0, 0)
                  ..lineTo(size.width, 0),
                dashPattern: dashPattern,
                color: color,
                strokeWidth: strokeWidth,
              ));

    return DottedBorder(
      options: effectiveOptions,
      child: child ??
          SizedBox(
            height: isRoundedRectangle ? null : 1,
            width: double.infinity,
          ),
    );
  }
}
