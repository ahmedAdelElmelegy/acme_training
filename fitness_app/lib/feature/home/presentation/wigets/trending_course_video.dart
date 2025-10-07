// import 'package:fitness_app/core/utils/app_constants.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class TrendingCourseVideo extends StatefulWidget {
//   const TrendingCourseVideo({super.key});

//   @override
//   State<TrendingCourseVideo> createState() => _TrendingCourseVideoState();
// }

// class _TrendingCourseVideoState extends State<TrendingCourseVideo> {
//   late YoutubePlayerController _controller;

//   @override
//   void initState() {
//     super.initState();

//     final videoId = YoutubePlayer.convertUrlToId(AppConstants.videoUrl);

//     if (videoId != null) {
//       _controller = YoutubePlayerController(
//         initialVideoId: videoId,
//         flags: const YoutubePlayerFlags(
//           autoPlay: false,
//           mute: false,
//           enableCaption: true,
//           controlsVisibleAtStart: true,
//           forceHD: false,
//         ),
//       );
//     } else {
//       debugPrint("❌ Invalid YouTube URL: ${AppConstants.videoUrl}");
//     }
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 240.h,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16.r),
//         color: Colors.black12,
//       ),
//       child: (YoutubePlayer.convertUrlToId(AppConstants.videoUrl) != null)
//           ? YoutubePlayer(
//               controller: _controller,
//               showVideoProgressIndicator: true,
//               progressIndicatorColor: Colors.red,
//             )
//           : const Center(
//               child: Text(
//                 "Invalid video URL",
//                 style: TextStyle(color: Colors.red),
//               ),
//             ),
//     );
//   }
// }
