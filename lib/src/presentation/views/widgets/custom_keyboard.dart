import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class CustomKeyboard extends StatefulWidget {
  final Function(String) onKeyPressed;

  const CustomKeyboard({
    super.key,
    required this.onKeyPressed,
  });

  @override
  State<CustomKeyboard> createState() => _CustomKeyboardState();
}

class _CustomKeyboardState extends State<CustomKeyboard> {
  bool _showSymbols = false;

  @override
  Widget build(BuildContext context) {
    const keyHeight = 60.0;
    const fontSize = 25.0;
    const subTextSize = 10.0;

    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        color: AppColors.keyboardBgColor,
        padding: EdgeInsets.all(6.dp),
        child: Column(
          children: [
            if (!_showSymbols) ...[
              // Numeric keyboard layout
              // Row 1: 1, 2, 3
              Row(
                children: [
                  _buildKey('1', ' ', keyHeight, fontSize, subTextSize),
                  SizedBox(width: 8.dp),
                  _buildKey('2', 'ABC', keyHeight, fontSize, subTextSize),
                 SizedBox(width: 8.dp),
                  _buildKey('3', 'DEF', keyHeight, fontSize, subTextSize),
                ],
              ),
             SizedBox(height: 100.h*(8/812),),
      
              // Row 2: 4, 5, 6
              Row(
                children: [
                  _buildKey('4', 'GHI', keyHeight, fontSize, subTextSize),
                  SizedBox(width: 8.dp),
                  _buildKey('5', 'JKL', keyHeight, fontSize, subTextSize),
                SizedBox(width: 8.dp),
                  _buildKey('6', 'MNO', keyHeight, fontSize, subTextSize),
                ],
              ),
              SizedBox(height: 100.h*(8/812),),
              // Row 3: 7, 8, 9
              Row(
                children: [
                  _buildKey('7', 'PQRS', keyHeight, fontSize, subTextSize),
                  SizedBox(width: 8.dp),
                  _buildKey('8', 'TUV', keyHeight, fontSize, subTextSize),
                   SizedBox(width: 8.dp),
                  _buildKey('9', 'WXYZ', keyHeight, fontSize, subTextSize),
                ],
              ),
             SizedBox(height: 100.h*(8/812),),
      
              // Row 4: symbols, 0, backspace
              Row(
                children: [
                  _buildSymbolKey(keyHeight),
                  SizedBox(width: 8.dp),
                  _buildKey('0', '', keyHeight, fontSize, subTextSize),
                 SizedBox(width: 8.dp),
                  _buildBackspaceKey(keyHeight),
                ],
              ),
            ] else ...[
              // Symbol keyboard layout
              // Row 1
              Row(
                children: [
                  _buildSymbolOnlyKey('!', keyHeight),
                SizedBox(width: 8.dp),
                  _buildSymbolOnlyKey('@', keyHeight),
               SizedBox(width: 8.dp),
                  _buildSymbolOnlyKey('#', keyHeight),
                ],
              ),
             SizedBox(height: 100.h*(8/812),),
      
              // Row 2
              Row(
                children: [
                  _buildSymbolOnlyKey('\$', keyHeight),
                  SizedBox(width: 8.dp),
                  _buildSymbolOnlyKey('%', keyHeight),
                 SizedBox(width: 8.dp),
                  _buildSymbolOnlyKey('^', keyHeight),
                ],
              ),
           SizedBox(height: 100.h*(8/812),),
      
              // Row 3
              Row(
                children: [
                  _buildSymbolOnlyKey('&', keyHeight),
                SizedBox(width: 8.dp),
                  _buildSymbolOnlyKey('*', keyHeight),
              SizedBox(width: 8.dp),
                  _buildSymbolOnlyKey('(', keyHeight),
                ],
              ),
              SizedBox(height: 100.h*(8/812),),
      
              // Row 4: back to numbers, ), backspace
              Row(
                children: [
                  _buildNumbersKey(keyHeight),
                  SizedBox(width: 8.dp),
                  _buildSymbolOnlyKey(')', keyHeight),
                  SizedBox(width: 8.dp),
                  _buildBackspaceKey(keyHeight),
                ],
              ),
            ],
             SizedBox(height: 100.h*(56/812),),
          ],
        ),
      ),
    );
  }

  Widget _buildKey(String number, String letters, double height, double fontSize, double subTextSize) {
    return Expanded(
      child: GestureDetector(
        onTap: () => widget.onKeyPressed(number),
        child: Container(
         height:46*(100.h/812),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(5.dp),
            border: Border(
              bottom: BorderSide(width: 1.dp, color: AppColors.keyboardButtonBorderColor),)
          ),
          child:  Center(
            child: Column(  mainAxisSize: MainAxisSize.min, 
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                Text(
                  number,
                    style: AppTypography.sfProRoundedRegular.copyWith(height: 1.0,
                      fontSize: 25.sp,
                      color: Colors.black,
                    )),
                
                if (letters.isNotEmpty)
                  Text(letters,
                    style: AppTypography.sfProRoundedBold.copyWith(height: 1.0,
                      fontSize: 10.sp,
                      color: Colors.black,
                      letterSpacing: 1
                    )
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSymbolOnlyKey(String symbol, double height) {
    return Expanded(
      child: GestureDetector(
        onTap: () => widget.onKeyPressed(symbol),
        child: Container(
          height:46*(100.h/812),
           alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(5.dp),
            border: Border(
              bottom: BorderSide(width: 1.dp, color: AppColors.keyboardButtonBorderColor),)
          ),
          child: Center(
            child: Text(
              symbol,
              style: AppTypography.sfProRoundedMedium.copyWith(
                fontSize: 25.sp,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBackspaceKey(double height) {
    return Expanded(
      child: GestureDetector(
        onTap: () => widget.onKeyPressed('backspace'),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
               borderRadius: BorderRadius.circular(8.dp),
          ),
        height:46*(100.h/812),
          child:  Column(mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Image.asset(AppImages.backspaceIcon, height: 17.dp, width: 24.dp,color: AppColors.black,)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSymbolKey(double height) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _showSymbols = true;
          });
        },
        child: Container(
            height:46*(100.h/812),
          decoration: BoxDecoration(
           
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.keyboardSymbols,
                height: 13.dp,
                width: 48.dp,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNumbersKey(double height) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _showSymbols = false;
          });
        },
        child: Container(
          height:46*(100.h/812),
          decoration: BoxDecoration(
           
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              '123',
              style: AppTypography.sfProRoundedSlim.copyWith(
                fontSize: 16.sp,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}