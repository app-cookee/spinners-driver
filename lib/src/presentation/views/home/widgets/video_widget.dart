import 'package:flutter/material.dart';
import 'package:spinners_laundry/app/theme/app_colors.dart';
import 'package:spinners_laundry/app/theme/app_typography.dart';
import 'package:spinners_laundry/src/presentation/constants/app_images.dart';
import 'package:spinners_laundry/src/presentation/views/widgets/youtube_video_dialog_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoWidget extends StatelessWidget {
  final String youtubeUrl;

  const VideoWidget({super.key, required this.youtubeUrl});

  String getYoutubeThumbnail(String url) {
    final videoId = YoutubePlayer.convertUrlToId(url);
    return 'https://img.youtube.com/vi/$videoId/0.jpg';
  }

  @override
  Widget build(BuildContext context) {
    final thumbnailUrl = getYoutubeThumbnail(youtubeUrl);

    return SizedBox(
      width: 240.dp,
      height: 132.dp,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.dp),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                thumbnailUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    AppColors.transparent.withValues(alpha: 0.5),
                    AppColors.transparent.withValues(alpha: 0.4),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => YoutubeVideoDialog(
                    youtubeUrl: youtubeUrl,
                  ),
                );
              },
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      AppImages.videoPlayIcon,
                      height: 24.dp,
                      width: 24.dp,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Tap to Play',
                      style: AppTypography.sfProRoundedSemiBold.copyWith(
                        fontSize: 10.sp,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
