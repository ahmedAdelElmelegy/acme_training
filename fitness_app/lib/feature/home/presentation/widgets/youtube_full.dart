import 'package:fitness_app/core/helper/spacing.dart';
import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FullYoutubePlayer extends StatefulWidget {
  final String videoUrl;
  const FullYoutubePlayer({super.key, required this.videoUrl});

  @override
  State<FullYoutubePlayer> createState() => _FullYoutubePlayerState();
}

class _FullYoutubePlayerState extends State<FullYoutubePlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final videoId = YoutubePlayer.convertUrlToId(widget.videoUrl)!;

    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        enableCaption: true,
        controlsVisibleAtStart: true,
        forceHD: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.red,
            onReady: () {
              debugPrint('Player is ready.');
            },
          ),
          builder: (context, player) {
            return player;
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: ColorManager.white,
                    ),
                  ),
                  horizontalSpace(8),
                  Text('Introduction', style: AppTextStyle.f16BoldWhite),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(Icons.settings, color: ColorManager.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
