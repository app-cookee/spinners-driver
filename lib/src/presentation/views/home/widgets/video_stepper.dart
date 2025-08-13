import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';
import 'package:spinners_driver/app/theme/app_typography.dart';
import 'package:spinners_driver/src/presentation/views/home/widgets/video_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class VideoStepper extends StatefulWidget {
  const VideoStepper({
    super.key,
    required this.steps,
    this.headerText = 'HOW IT WORKS',
    this.activeStepColor = const Color(0xFF007AFF),
    this.inactiveStepColor = const Color(0xFFE0E0E0),
  });
  final List<StepData> steps;
  final String headerText;
  final Color activeStepColor;
  final Color inactiveStepColor;

  @override
  State<VideoStepper> createState() => _VideoStepperState();
}

class _VideoStepperState extends State<VideoStepper> {
  late PageController _pageController;
  late ScrollController _stepperScrollController;
  int _currentStep = 0;
  @override
  void initState() {
    super.initState();
 _pageController = PageController(viewportFraction: 0.77);
    _stepperScrollController = ScrollController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _stepperScrollController.dispose();
    super.dispose();
  }

void _onPageChanged(int index) {
  // Prevent going to the spacer item (last item)
  if (index >= widget.steps.length) {
    // Snap back to the last valid step
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pageController.animateToPage(
        widget.steps.length - 1,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      );
    });
    return;
  }
  
  setState(() {
    _currentStep = index;
  });
  _scrollStepperToActiveStep(index);
}

  void _scrollStepperToActiveStep(int activeStep) {
    if (!_stepperScrollController.hasClients) return;
    // Simple: scroll 200 pixels for each step
    double targetOffset = activeStep * (100.h>800? 65.w : 70.w);
    // Ensure we don't scroll beyond the bounds
    double maxScroll = _stepperScrollController.position.maxScrollExtent;
    targetOffset = targetOffset.clamp(0.0, maxScroll);
    _stepperScrollController.animateTo(
      targetOffset,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

   @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const SizedBox(height: 16),
        ScrollableFullStepper(
            stepCount: widget.steps.length,
            currentStep: _currentStep,
            headerText: widget.headerText,
            scrollController: _stepperScrollController),
         SizedBox(height: 12.dp),
        Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(width: 16.dp),
            Padding(
              padding:  EdgeInsets.only(top: 12.dp),
              child: Transform.rotate(
                angle: -1.5708, // -90 degrees
                child:  Text(
                  'STEP',
                  style: AppTypography.sfProRoundedBold.copyWith(
                      fontSize: 11.sp,
                      color:AppColors.neutral950,
                    ),
                ),
              ),
            ),
            Expanded(child: _buildVideoCards()),
          ],
        ),
      ],
    );
  }

  Widget _buildVideoCards() {
    return SizedBox(
      height: 200.dp,
      child: PageView.builder(
          padEnds: false,
        controller: _pageController,
        onPageChanged: _onPageChanged,
        itemCount: widget.steps.length+1,
     
        itemBuilder: (context, index) {
           if (index == widget.steps.length) {
            return SizedBox(
              width: 0.dp, // Same width as VideoWidget
              height: 0.dp,
            );
          }
   return   Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(
                youtubeUrl: 'https://youtu.be/xV9HnITo2C0?si=MDXrRb8FSKSVAeAw',
              ),
              Gap(8.dp),
              SizedBox(
                width: 107.dp,
                child: Text(
                  widget.steps[index].title,
                  textAlign: TextAlign.left,
                  style: AppTypography.sfProRoundedBold.copyWith(
                    fontSize: 11.sp,
                    color: AppColors.textGrey,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

// Model classes for step data
class StepData {
  final int stepNumber;
  final bool isActive;
  final String title;
  final String? thumbnailImage;
  final VoidCallback? onVideoTap;

  const StepData({
    required this.stepNumber,
    required this.isActive,
    required this.title,
    this.thumbnailImage,
    this.onVideoTap,
  });
}

class ScrollableFullStepper extends StatelessWidget {
  const ScrollableFullStepper({
    super.key,
    required this.stepCount,
    required this.currentStep,
    this.headerText = 'HOW IT WORKS',
    required this.scrollController,
  });

  final int stepCount;
  final int currentStep;
  final String headerText;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
       controller: scrollController,
      scrollDirection: Axis.horizontal,
     
      padding:  EdgeInsets.symmetric(horizontal: 16.dp),
      child:  Row(
        children: [
          ...List.generate(stepCount * 2 - 1, (index) {
            if (index.isEven) {
              // Step circle
              final stepIndex = index ~/ 2;
              return _buildStepCircle(stepIndex + 1,
                  isActive: stepIndex == currentStep);
            } else {
              // Line with centered HOW IT WORKS
              return _buildLineWithText();
            }
          }),
          // Add spacing at the end for smooth scrolling
          SizedBox(width: 330.dp),
        ],
      ),
    );
  }

  Widget _buildStepCircle(int number, {required bool isActive}) {
    return Container(
      width: 24.dp,
      height: 24.dp,
      // margin: EdgeInsets.only(right: 8.dp),
      decoration: BoxDecoration(
        color: isActive ? AppColors.primaryColor : AppColors.lightGrey,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '$number',
          style: AppTypography.sfProRoundedBold.copyWith(
            fontSize: 11.sp,
            color: isActive ? AppColors.blue1 : AppColors.countrycodeColor,
          ),
        ),
      ),
    );
  }

  Widget _buildLineWithText() {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 8.dp),
      child: Row(
        children: [
          Container(
            width: 61.dp,
            height: 1.dp,
            color: AppColors.lightGrey,
          ),
          SizedBox(width: 8.dp),
          Text(
            headerText,
            style: AppTypography.sfProRoundedBold.copyWith(
              fontSize: 11.sp,
              color: AppColors.textGrey,
            ),
          ),
          SizedBox(width: 8.dp),
          Container(
            width:61.dp,
            height: 1,
            color: AppColors.lightGrey,
          ),
        ],
      ),
    );
  }
}
