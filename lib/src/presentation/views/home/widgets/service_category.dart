import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_laundry/app/app_router/app_router.dart';
import 'package:spinners_laundry/app/theme/app_colors.dart';
import 'package:spinners_laundry/app/theme/app_typography.dart';
import 'package:spinners_laundry/src/domain/models/service_category_model/service_category_model.dart';
import 'package:spinners_laundry/src/presentation/constants/app_images.dart';
import 'package:spinners_laundry/src/presentation/views/home/widgets/quick_pickup_button.dart';
import 'package:spinners_laundry/src/presentation/views/profile/account_screen.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class ServiceCategory extends StatelessWidget {
  const ServiceCategory({super.key, required this.services});
  final List<ServiceCategoryItemModel> services;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.dp),
      child: SizedBox(
        height: 100.h > 800 ? 73.h : 80.h,
        child: ListView.builder(
          padding: EdgeInsets.all(0),
          physics: NeverScrollableScrollPhysics(), //
          itemCount: services.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsGeometry.only(bottom: 12.dp),
            child: ServiceCard(dataItem: services[index]),
          );
        },),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final ServiceCategoryItemModel dataItem;
  const ServiceCard({super.key, required this.dataItem});

  @override
  Widget build(BuildContext context) {
    String backgroundImage;
    String personImage;
    Color tagFillColor;
    Color tagTextColor;
    Color tagDottedColor;

    switch (dataItem.type) {
      case 'laundry':
        backgroundImage = AppImages.card1;
        personImage = AppImages.card1Person;
        tagFillColor = AppColors.serviceFillGreen;
        tagTextColor = AppColors.serviceGreen;
        tagDottedColor = AppColors.servicedottedGreen;
        break;
      case 'luxury':
        backgroundImage = AppImages.card2;
        personImage = AppImages.card2Person;
        tagFillColor = AppColors.luxuryTagFill;
        tagTextColor = AppColors.luxuryTagText;
        tagDottedColor = AppColors.luxuryTagDotted;
        break;
      case 'shoe':
        backgroundImage = AppImages.card3;
        personImage = AppImages.card3Person;
        tagFillColor = AppColors.shoeBagTagFill;
        tagTextColor = AppColors.shoeBagTagText;
        tagDottedColor = AppColors.shoeBagTagDotted;
        break;
      default:
        backgroundImage = AppImages.card1;
        personImage = AppImages.card1Person;
        tagFillColor = AppColors.serviceFillGreen;
        tagTextColor = AppColors.serviceFillGreen;
        tagDottedColor = AppColors.servicedottedGreen;
    }

    return Stack(
      children: [
        Container(
          // height: (100.w - 32.dp) / 1.95, width: 100.w - 32.dp,
          decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.fill,
            image: AssetImage(
              backgroundImage,
            ),
          )),
          child: Stack(
            children: [
               Positioned(
                         right: -3.5.dp,
                         bottom: 58.dp,
                         child: Image.asset(
                           fit: BoxFit.fitHeight,
                           personImage,
                           width: 162.dp,
                           height: 106.dp,
                         ),
                       ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:EdgeInsetsGeometry.all(12.dp),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       CustomPaint(
                      painter: DashRectPainter(
                        borderRadius: 6.dp,
                        strokeWidth: 1.5,
                        color: tagDottedColor,
                        backgroundColor: tagFillColor,
                      ),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 6.dp, horizontal: 8.dp),
                        decoration: BoxDecoration(
                            color: tagFillColor,
                            borderRadius: BorderRadius.circular(6.dp)),
                        child: Text(
                          dataItem.subTitle,
                          style: AppTypography.sfProRoundedSemiBold
                              .copyWith(fontSize: 10.sp, color: tagTextColor),
                        ),
                      ),
                    ),
                    Gap(6.dp),
                    SizedBox(
                      width: 40.w,
                      child: (dataItem.type == 'luxury' &&
                              dataItem.title.toLowerCase().contains("luxury"))
                          ? RichText(
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                style: AppTypography.sfProRoundedSemiBold.copyWith(
                                  fontSize: 18.sp,
                                  color: AppColors.primary950,
                                  height: 1.3,
                                ),
                                children: dataItem.title.split(" ").map((word) {
                                  if (word.toLowerCase() == "luxury") {
                                    return WidgetSpan(
                                      alignment: PlaceholderAlignment.baseline,
                                      baseline: TextBaseline.alphabetic,
                                      child: ShaderMask(
                                        shaderCallback: (bounds) => LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            AppColors.luxuryTextgradient1,
                                            AppColors.luxuryTextgradient2,
                                          ],
                                        ).createShader(Rect.fromLTWH(
                                            0, 0, bounds.width, bounds.height)),
                                        child: Text(
                                          "$word ",
                                          style: AppTypography.sfProRoundedSemiBold
                                              .copyWith(
                                            fontSize: 18.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    );
                                  } else {
                                    return TextSpan(text: "$word ");
                                  }
                                }).toList(),
                              ),
                            )
                          : Text(
                              dataItem.title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: AppTypography.sfProRoundedSemiBold.copyWith(
                                fontSize: 18.sp,
                                color: AppColors.primary950,
                                height: 1.3,
                              ),
                            ),
                    ),
                    Gap(12.dp),
                    SizedBox(
                      width: 47.w,
                      child: Text(
                        maxLines: 2,
                        dataItem.shortDesc,
                        style: AppTypography.sfProRoundedRegular
                            .copyWith(fontSize: 10.sp, color: AppColors.textGrey),
                      ),
                    ),
                    
                    ],),
                  ),
                 
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                                padding: EdgeInsets.all(12.dp),
                                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.dp),
                        bottomRight: Radius.circular(12.dp)),
                                ),
                                child: Row(
                    spacing: 6.dp,
                    children: [
                      InkWell(
                        onTap: () {
                          context.router.push(NormalOrderRoute());
                        },
                        child: Container(
                          padding: EdgeInsets.all(8.dp),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.primaryColor),
                            color: AppColors.blue1,
                            borderRadius: BorderRadius.circular(8.dp),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                AppImages.plusIcon,
                                width: 20.dp,
                                height: 20.dp,
                                fit: BoxFit.cover,
                              ),
                              Gap(4.dp),
                              Text(
                                dataItem.placeOrderText.isNotEmpty ? dataItem.placeOrderText : "Place Order",
                                style: AppTypography.sfProRoundedSemiBold.copyWith(
                                    fontSize: 14.sp, color: AppColors.primaryColor),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          context.router.push(QuickOrderScreenRoute());
                        },
                        child: QuickPickupButton(
                          buttonText: dataItem.quickPickupText.isNotEmpty ? dataItem.quickPickupText : 'Quick Pickup',
                        )),
                      Container(
                          padding: EdgeInsets.all(8.dp),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.lightGrey),
                              borderRadius: BorderRadius.circular(8.dp)),
                          child: Image.asset(
                            AppImages.message,
                            height: 20.dp,
                            width: 20.dp,
                            fit: BoxFit.cover,
                          ))
                    ],
                                )),
                  ),
                ],
              ),
            ],
          ),
       
        ),
       
      
      ],
    );
  }
}
