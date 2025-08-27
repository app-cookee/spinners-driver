import 'package:flutter/material.dart';
import 'package:spinners_driver/src/presentation/views/widgets/the_toast_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherUtils {
  static Future<void> launchPhoneDialer(String phoneNumber,{BuildContext? context}) async {
    try {
      // Method 1: Direct URL string
      final String phoneUrl = 'tel:$phoneNumber';
      final Uri phoneUri = Uri.parse(phoneUrl);

      if (await canLaunchUrl(phoneUri)) {
        await launchUrl(phoneUri, mode: LaunchMode.externalApplication);
      } else {
        // Method 2: Try with + prefix
        final String phoneUrlWithPlus = 'tel:+$phoneNumber';
        final Uri phoneUriWithPlus = Uri.parse(phoneUrlWithPlus);

        if (await canLaunchUrl(phoneUriWithPlus)) {
          await launchUrl(phoneUriWithPlus,
              mode: LaunchMode.externalApplication);
        } else {
          // Method 3: Try without any URI parsing
          await launchUrl(Uri.parse('tel:$phoneNumber'));
        }
      }
    } catch (e) {
      // Method 4: Last resort - direct launch without canLaunchUrl check
      try {
        await launchUrl(Uri.parse('tel:$phoneNumber'),
            mode: LaunchMode.externalApplication);
      } catch (e2) {
        if (context != null && context.mounted) {
          TheToast.show(
              message: 'Could not launch phone dialer: ${e2.toString()}',
              context: context);
        }
      }
    }
  }
  static Future<void> launchWhatsApp(String phoneNumber, String message,{BuildContext? context}) async {
    try {
      // Method 1: Try with country code format
      String whatsappUrl =
          'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}';
      Uri whatsappUri = Uri.parse(whatsappUrl);

      if (await canLaunchUrl(whatsappUri)) {
        await launchUrl(whatsappUri, mode: LaunchMode.externalApplication);
      } else {
        // Method 2: Try with + prefix
        String whatsappUrlWithPlus =
            'https://wa.me/+$phoneNumber?text=${Uri.encodeComponent(message)}';
        Uri whatsappUriWithPlus = Uri.parse(whatsappUrlWithPlus);

        if (await canLaunchUrl(whatsappUriWithPlus)) {
          await launchUrl(whatsappUriWithPlus,
              mode: LaunchMode.externalApplication);
        } else {
          // Method 3: Try WhatsApp custom scheme
          String whatsappScheme =
              'whatsapp://send?phone=$phoneNumber&text=${Uri.encodeComponent(message)}';
          Uri whatsappSchemeUri = Uri.parse(whatsappScheme);

          if (await canLaunchUrl(whatsappSchemeUri)) {
            await launchUrl(whatsappSchemeUri,
                mode: LaunchMode.externalApplication);
          } else {
            // Method 4: Last resort - direct launch
            await launchUrl(Uri.parse(whatsappUrl),
                mode: LaunchMode.externalApplication);
          }
        }
      }
    } catch (e) {
      // Final fallback
      try {
        await launchUrl(
            Uri.parse(
                'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}'),
            mode: LaunchMode.externalApplication);
      } catch (e2) {
        if (context != null && context.mounted) {
          TheToast.show(
              message: 'Could not launch WhatsApp: ${e2.toString()}',
              context: context);
        }
      }
    }
  }
}