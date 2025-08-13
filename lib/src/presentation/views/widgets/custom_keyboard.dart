import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class CustomKeyboard extends StatelessWidget {
  final Function(String) onKeyPressed;

  const CustomKeyboard({
    super.key,
    required this.onKeyPressed,
  });

  @override
  Widget build(BuildContext context) {
    const keyHeight = 60.0;
    const fontSize = 20.0;
    const subTextSize = 10.0;

    return Container(
      color: AppColors.keyboardBgColor,
      padding: EdgeInsets.all(6.dp),
      child: Column(
        children: [
          // Row 1: 1, 2, 3
          Row(
            children: [
              _buildKey('1', ' ', keyHeight, fontSize, subTextSize),
              const SizedBox(width: 8),
              _buildKey('2', 'ABC', keyHeight, fontSize, subTextSize),
              const SizedBox(width: 8),
              _buildKey('3', 'DEF', keyHeight, fontSize, subTextSize),
            ],
          ),
          const SizedBox(height: 8),

          // Row 2: 4, 5, 6
          Row(
            children: [
              _buildKey('4', 'GHI', keyHeight, fontSize, subTextSize),
              const SizedBox(width: 8),
              _buildKey('5', 'JKL', keyHeight, fontSize, subTextSize),
              const SizedBox(width: 8),
              _buildKey('6', 'MNO', keyHeight, fontSize, subTextSize),
            ],
          ),
          const SizedBox(height: 8),

          // Row 3: 7, 8, 9
          Row(
            children: [
              _buildKey('7', 'PQRS', keyHeight, fontSize, subTextSize),
              const SizedBox(width: 8),
              _buildKey('8', 'TUV', keyHeight, fontSize, subTextSize),
              const SizedBox(width: 8),
              _buildKey('9', 'WXYZ', keyHeight, fontSize, subTextSize),
            ],
          ),
          const SizedBox(height: 8),

          // Row 4: empty, 0, backspace
          Row(
            children: [
              _buildEmptyKey(keyHeight),
              const SizedBox(width: 8),
              _buildKey('0', '', keyHeight, fontSize, subTextSize),
              const SizedBox(width: 8),
              _buildBackspaceKey(keyHeight),
            ],
          ),
          Gap(39.dp)
        ],
      ),
    );
  }

  Widget _buildKey(String number, String letters, double height,
      double fontSize, double subTextSize) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onKeyPressed(number),
        child: Container(
          height: height,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number,
                style: AppTypography.sfProRoundedSlim.copyWith(
                  fontSize: 25.sp,
                  color: Colors.black,
                )
              ),
              if (letters.isNotEmpty)
                Text(
                  letters,
                  style: AppTypography.sfProRoundedSlim.copyWith(
                  fontSize: 10.sp,
                  color: Colors.black,
                  letterSpacing: 1
                )
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackspaceKey(double height) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onKeyPressed('backspace'),
        child: Container(  decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          height: height,
          child: Column(    mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.backspace_outlined,
                color: Colors.black,
                size: 23,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyKey(double height) {
    return Expanded(
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}