import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/widgets/common_textfield.dart';
import 'package:spinners_driver/src/presentation/views/widgets/primary_button_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/the_toast_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';
import 'dart:ui';

class QRScannerScreenWidget extends StatefulWidget {
  const QRScannerScreenWidget({super.key, this.qrCodeFieldController});
  final TextEditingController? qrCodeFieldController;
  @override
  State<QRScannerScreenWidget> createState() => _QRScannerScreenWidgetState();
}

class _QRScannerScreenWidgetState extends State<QRScannerScreenWidget> {
  final MobileScannerController controller = MobileScannerController();
  bool _isScanned = false;
  bool _showScanner = false; // Add this state variable
  final TextEditingController _manualQrController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Use provided controller or local controller
    if (widget.qrCodeFieldController != null) {
      _manualQrController.text = widget.qrCodeFieldController!.text;
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // void _toggleScanner() {
  //   setState(() {
  //     _showScanner = !_showScanner;
  //     _isScanned = false; // Reset scan state when toggling
  //   });
  // }

  void _submitManualQr(BuildContext context) {
    final qrValue = _manualQrController.text.trim();
    if (qrValue.isNotEmpty) {
      Navigator.pop(context,  {
        "bagId": qrValue,
        "isManual": true,
      });
    } else {
      // Show validation message
      TheToast.show(context: context, message: 'Please enter a QR code value', isError: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    const double scanBoxSize = 300;

    return Scaffold(
      body: Stack(
        children: [
          _appbarWidget(context),

          // Scanner widget
          _scanQR(scanBoxSize, context),
          bagIdField(context),

          // ],
        ],
      ),
    );
  }

  Widget bagIdField(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.dp),
            topRight: Radius.circular(24.dp),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Gap(16.dp),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.dp),
              child: CommonTextField(
                hintText: "Enter Bag ID",
                hintStyle: AppTypography.sfProRoundedRegular.copyWith(fontSize: 16.sp, color: AppColors.grey1Color),
                controller: _manualQrController,
                borderRadius: 12.dp,
              ),
            ),
            Gap(8.dp),
            // Submit button for manual input
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.dp),
              child: PrimaryButtonWidget(
                onPressed: () => _submitManualQr(context),
                text: "Submit",
              ),
            ),
            Gap(24.dp),
          ],
        ),
      ),
    );
  }

  Widget _appbarWidget(BuildContext context) {
    return Container(
      height: 97.dp,
      decoration: const BoxDecoration(
        color: AppColors.white,
      ),
      child: Column(
        children: [
          Gap(62.dp),
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Padding(
              padding: EdgeInsets.only(left: 16.dp),
              child: Row(
                children: [
                  Image.asset(
                    AppImages.arrow,
                    height: 20.dp,
                    width: 20.dp,
                  ),
                  Gap(6.dp),
                  Text(
                    "Scan Bag",
                    style: AppTypography.sfProRoundedSemiBold.copyWith(fontSize: 16.sp, color: AppColors.neutral950),
                  ),
                  Gap(15.dp)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _scanQR(double scanBoxSize, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 97.dp,
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12.dp),
      ),
      child: Stack(
        children: [
          ///Camera preview
          Center(
            child: SizedBox(
              width: scanBoxSize,
              height: scanBoxSize,
              child: MobileScanner(
                controller: controller,
                onDetect: (capture) {
                  if (_isScanned) return;
                  _isScanned = true;

                  for (final barcode in capture.barcodes) {
                    final value = barcode.rawValue;
                    if (value != null) {
                      debugPrint("✅ Scanned: $value");
                      Navigator.pop(context, { "bagId": value,
        "isManual": false,});
                      break;
                    }
                  }
                },
              ),
            ),
          ),

          ///Scanner overlay with only corners
          Center(
            child: SizedBox(
              width: scanBoxSize,
              height: scanBoxSize,
              child: CustomPaint(
                size: Size(scanBoxSize, scanBoxSize),
                painter: CornerPainter(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Custom painter to draw only the 4 corners
class CornerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.primaryColor
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    const double cornerLength = 30;

    // Top-left corner
    canvas.drawLine(const Offset(0, 0), const Offset(cornerLength, 0), paint);
    canvas.drawLine(const Offset(0, 0), const Offset(0, cornerLength), paint);

    // Top-right corner
    canvas.drawLine(Offset(size.width, 0), Offset(size.width - cornerLength, 0), paint);
    canvas.drawLine(Offset(size.width, 0), Offset(size.width, cornerLength), paint);

    // Bottom-left corner
    canvas.drawLine(Offset(0, size.height), Offset(cornerLength, size.height), paint);
    canvas.drawLine(Offset(0, size.height), Offset(0, size.height - cornerLength), paint);

    // Bottom-right corner
    canvas.drawLine(Offset(size.width, size.height), Offset(size.width - cornerLength, size.height), paint);
    canvas.drawLine(Offset(size.width, size.height), Offset(size.width, size.height - cornerLength), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
