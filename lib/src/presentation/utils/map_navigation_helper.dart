import 'package:flutter/material.dart';
import 'package:spinners_driver/src/presentation/views/widgets/the_toast_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class MapNavigationHelper {
  
  /// Opens Google Maps navigation to the given coordinates.
  /// Tries Google Maps app first, falls back to browser if app is not installed.
  static Future<void> openNavigation(double? lat, double? lng,BuildContext context) async {
    // Try Google Maps app
    final appUrl = Uri.parse('google.navigation:q=$lat,$lng&mode=d');
    if (await canLaunchUrl(appUrl)) {
      await launchUrl(appUrl);
      return;
    }

    // Fallback: Google Maps in browser
    final browserUrl = Uri.parse(
      'https://www.google.com/maps/dir/?api=1&destination=$lat,$lng&travelmode=driving',
    );
    if (await canLaunchUrl(browserUrl)) {
      await launchUrl(browserUrl, mode: LaunchMode.externalApplication);
      return;
    }
TheToast.show(message: 'Could not launch Google Maps', context: context);
    // throw 'Could not launch Google Maps';
  }
}
