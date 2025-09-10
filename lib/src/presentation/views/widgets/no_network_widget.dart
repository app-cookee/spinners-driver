
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/constants/app_images.dart';
import 'package:spinners_driver/src/presentation/views/widgets/primary_button_widget.dart';
import 'package:spinners_driver/src/presentation/views/widgets/the_toast_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class NoNetworkWidget extends StatelessWidget {
  const NoNetworkWidget({super.key, this.content = 'No internet Connection\nCheck your network and try again.'});

  final String content;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        return SizedBox(
          width: width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.dp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(10.h),
                      Text(
                        'Oops..!',
                        style: AppTypography.sfProRoundedSemiBold.copyWith(
                          color: AppColors.primaryButtonTextColor,
                          fontSize: 32.sp,
                        ),
                      ),
                      Text(
                        content,
                        style: AppTypography.sfProRoundedRegular.copyWith(
                          color: Colors.black,
                          fontSize: 16.sp,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
              Gap(46.dp),
              Image.asset(AppImages.imgNoNetwork),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.dp),
                child: PrimaryButtonWidget(
                    onPressed: () {
                      TheToast.show(isError: false,
                        message: 'Restoring Connection...', context: context,color: AppColors.textGrey);
                      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Restoring Connection...')));
                      // context.read<NetworkBloc>().add(const NetworkEvent.observe());
                    },
                    text: 'Try Again'),
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}
