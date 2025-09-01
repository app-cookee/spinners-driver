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

  void _toggleScanner() {
    setState(() {
      _showScanner = !_showScanner;
      _isScanned = false; // Reset scan state when toggling
    });
  }

  void _submitManualQr(BuildContext context) {
    final qrValue = _manualQrController.text.trim();
    if (qrValue.isNotEmpty) {
      Navigator.pop(context, qrValue);
    } else {
      // Show validation message
      TheToast.show(context: context,message: 'Please enter a QR code value', isError: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    const double scanBoxSize = 250;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor500,
        title: Text(
          "QR Scanner",
          style: AppTypography.sfProRoundedBold.copyWith(color: AppColors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.flash_on),
            onPressed: () => controller.toggleTorch(),
          ),
          IconButton(
            icon: const Icon(Icons.cameraswitch),
            onPressed: () => controller.switchCamera(),
          ),
        ],
      ),
      body: Stack(
        children: [
          // Main content
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (!_showScanner) ...[
                Gap(10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.dp),
                  child: CommonTextField(
                    hintText: "Enter QR code value",
                    controller: _manualQrController,
                    
                  ),
                ),
                Gap(16.dp),
                // Submit button for manual input
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.dp),
                  child: PrimaryButtonWidget(
                    onPressed: () => _submitManualQr(context),
                    text: "Submit QR Code",
                  ),
                ),
                Gap(8.dp),
                // Cancel button
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.dp),
                  child: PrimaryButtonWidget(
                    onPressed: () => Navigator.pop(context),
                    text: "Cancel",
                    backgroundColor: AppColors.grey1Color,
                    buttonBgImage: AppImages.buttonGreyBg,
                  ),
                ),
                Gap(24.dp),
                Text(
                  'OR',
                  style: AppTypography.sfProRoundedRegular.copyWith(color: AppColors.neutral500),
                ),
                Gap(24.dp),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.dp),
                  child: PrimaryButtonWidget(
                    onPressed: _toggleScanner, // Use the toggle function
                    text: _showScanner ? "Close Scanner" : "Scan QR Code",
                  ),
                ),
              ]
            ],
          ),

          // Scanner overlay with blur background
          if (_showScanner) ...[
            // Blur background
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withValues(alpha: 0.3),
              ),
            ),

            // Scanner widget
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _scanQR(scanBoxSize, context),
                  Gap(20.dp),
                  // Close button
                  ElevatedButton(
                    onPressed: _toggleScanner,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.white,
                      foregroundColor: AppColors.primaryColor500,
                    ),
                    child: Text(
                      "Close Scanner",
                      style: AppTypography.sfProRoundedRegular.copyWith(color: AppColors.primaryColor500),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _scanQR(double scanBoxSize, BuildContext context) {
    return Stack(
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
                    Navigator.pop(context, value);
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
    );
  }
}

/// Custom painter to draw only the 4 corners
class CornerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.green
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
