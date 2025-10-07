import 'package:fitness_app/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FullYoutubePlayer extends StatefulWidget {
  final String videoUrl;
  const FullYoutubePlayer({super.key, required this.videoUrl});

  @override
  State<FullYoutubePlayer> createState() => _FullYoutubePlayerState();
}

class _FullYoutubePlayerState extends State<FullYoutubePlayer> {
  late YoutubePlayerController _controller;
  bool _isPlayerReady = false;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    try {
      final videoId = YoutubePlayer.convertUrlToId(widget.videoUrl);

      if (videoId == null) {
        setState(() {
          _hasError = true;
        });
        return;
      }

      _controller = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
          enableCaption: false, // Disable to reduce issues
          controlsVisibleAtStart: true,
          forceHD: false,
          useHybridComposition: true,
          disableDragSeek: false,
        ),
      )..addListener(_playerListener);
    } catch (e) {
      setState(() {
        _hasError = true;
      });
      debugPrint('YouTube Player Error: $e');
    }
  }

  void _playerListener() {
    if (_isPlayerReady && mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    if (!_hasError) {
      _controller.removeListener(_playerListener);
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_hasError) {
      return _buildErrorWidget();
    }

    return SizedBox(
      width: double.infinity,
      height: 250.h, // Fixed height
      child: YoutubePlayerBuilder(
        onExitFullScreen: () {
          // Handle full screen exit if needed
        },
        player: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.blueAccent,
          progressColors: const ProgressBarColors(
            playedColor: Colors.red,
            handleColor: Colors.redAccent,
          ),
          topActions: [
            const SizedBox(width: 8.0),
            Expanded(
              child: Text(
                _controller.metadata.title,
                style: const TextStyle(color: Colors.white, fontSize: 12.0),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ],
          onReady: () {
            setState(() {
              _isPlayerReady = true;
            });
            debugPrint('Player is ready.');
          },
        ),
        builder: (context, player) {
          return ColoredBox(color: Colors.black, child: player);
        },
      ),
    );
  }

  Widget _buildErrorWidget() {
    return Container(
      width: double.infinity,
      height: 250.h,
      color: Colors.grey[300],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 50.w, color: Colors.red),
          verticalSpace(10),
          Text(
            'Failed to load video',
            style: TextStyle(fontSize: 16.sp, color: Colors.black54),
          ),
          verticalSpace(10),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _hasError = false;
              });
              _initializePlayer();
            },
            child: Text('Retry'),
          ),
        ],
      ),
    );
  }
}
