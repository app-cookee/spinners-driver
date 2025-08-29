import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class ImagePickerSheet extends StatelessWidget {
  final Function(ImageSource) getPhoto;

  const ImagePickerSheet({super.key, required this.getPhoto});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.only(left: 16.dp, top: 24.dp),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select an Option',
                style: AppTypography.sfProRoundedSemiBold.copyWith(
                  fontSize: 16.sp,
                  color: AppColors.textGrey,
                ),
              ),
              Gap(18.dp),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      getPhoto(ImageSource.camera);
                    },
                    child: Container(
                      height: 70.dp,
                      width: 80.dp,
                      decoration: BoxDecoration(
                          color: const Color(0xffF5F8EC),
                          borderRadius: BorderRadius.circular(8),
                          border:
                              Border.all(color: const Color(0xffE6EDD0), width: 1)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.camera,color: Color(0xff45521E),),
                          // Image.asset(
                          //   AppImages.cameraIcon,
                          //   height: 33.dp,
                          //   width: 33.dp,
                          // ),
                          Gap(2.dp),
                          Text(
                            'Camera',
                            style: AppTypography.sfProRoundedMedium.copyWith(
                              fontSize: 12.sp,
                              color: const Color(0xff45521E),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(12.dp),
                  InkWell(
                    onTap: () {
                      getPhoto(ImageSource.gallery);
                    },
                    child: Container(
                      height: 70.dp,
                      width: 80.dp,
                      decoration: BoxDecoration(
                          color: const Color(0xffF5F8EC),
                          borderRadius: BorderRadius.circular(8),
                          border:
                              Border.all(color: const Color(0xffE6EDD0), width: 1)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.filter,color: Color(0xff45521E),),
                          // Image.asset(
                          //   AppImages.filesIcon,
                          //   height: 33.dp,
                          //   width: 33.dp,
                          // ),
                          Gap(2.dp),
                          Text(
                            'Files',
                            style: AppTypography.sfProRoundedMedium.copyWith(
                              fontSize: 12.sp,
                              color: const Color(0xff45521E),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
