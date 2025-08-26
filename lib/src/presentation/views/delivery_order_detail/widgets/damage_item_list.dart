import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class DressListWidget extends StatelessWidget {
  const DressListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> dressItems = [
      {
        'title': 'Delicate Embroidered Dress',
        'hasAttachments': true,
      },
      {
        'title': 'Abaya Dress',
        'hasAttachments': true,
      },
    ];

    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: dressItems.length,
      separatorBuilder: (context, index) => SizedBox(height: 4.dp),
      itemBuilder: (context, index) {
        final item = dressItems[index];
        return DressItemWidget(
          title: item['title'],
          hasAttachments: item['hasAttachments'],
        );
      },
    );
  }
}

class DressItemWidget extends StatelessWidget {
  final String title;
  final bool hasAttachments;

  const DressItemWidget({
    super.key,
    required this.title,
    required this.hasAttachments,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.dp),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppColors.red,
          width: 1.dp,
        ),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0, 0.33, 0.66, 1],
          colors: [
            Colors.white,
            Colors.white,
            Colors.white,
            Color(0xFFFFF9F9),
          ],
        ),
        borderRadius: BorderRadius.all(Radius.circular(7.dp)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTypography.sfProRoundedSemiBold.copyWith(
                    fontSize: 12.sp,
                    color: AppColors.neutral950,
                  ),
                ),
                Gap(4.dp),
                if (hasAttachments)
                  Row(
                    children: [
                      Image.asset(
                        AppImages.pin,
                        height: 16.dp,
                        width: 16.dp,
                      ),
                      Gap(2.dp),
                      Text(
                        'Attachements',
                        style: AppTypography.sfProRoundedMedium.copyWith(
                          fontSize: 12.sp,
                          color: AppColors.textGrey,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
            //   DamageNotificationBottomSheet.show(
            //   context,
            //   itemName: 'Delicate Embroidered Dress',
            //   message: 'This dress appears to be delicate and may not be suitable for standard cleaning. There is a risk of color bleeding or embroidery damage.',
            //   imageUrls: [
            //     'https://imgs.search.brave.com/NW6QzJApnUax1xVhDjGIFWUdQVik51sUaGsT_K6TtiI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTMw/MjI4NDUxNy9waG90/by9saXR0bGUtZ2ly/bHMtcGluay1iYWxs/ZXJpbmEtZHJlc3Mu/anBnP3M9NjEyeDYx/MiZ3PTAmaz0yMCZj/PXhYaURKSGI5WGFf/VEpYX3N5T3p4UHZM/V1dGTGs5ZnkzTVQt/SFpLZFJ5bkU9',
            //     'https://imgs.search.brave.com/pRGxWly9IYvyKgy2XaI9X9_p0rbSQ0FJ68gDUZvNMZc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTMw/OTQxNjU5MC9waG90/by9jb2NrdGFpbC1k/cmVzcy13aXRoLXZl/bHZldC1pc29sYXRl/ZC1vbi13aGl0ZS5q/cGc_cz02MTJ4NjEy/Jnc9MCZrPTIwJmM9/eXI0OHp1dUFfU1ZO/MVRRN1llXzF0ZDN1/YWpnYXlTRnRmLTV2/dk01SGNhQT0',
            //   ],
            //   serviceName: 'Luxury Dry Cleaning',
            //   serviceDescription: 'Ensures fabric-safe treatment with manual handling',
            //   additionalCharge: '+AED 10 Only',
            //   onAcceptContinue: () {
            //     Navigator.pop(context);
            //     // Handle accept action
            //   },
            //   onSkipItem: () {
            //     Navigator.pop(context);
            //     // Handle skip action
            //   },
            //   onDiscussWhatsApp: () {
            //     Navigator.pop(context);
            //     // Handle WhatsApp action
            //   },
            // );
            },
            child: Text(
              'View',
              style: AppTypography.sfProRoundedSemiBold.copyWith(
                fontSize: 12.dp,
                color: AppColors.red,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
