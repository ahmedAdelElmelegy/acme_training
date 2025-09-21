import 'package:facebook/core/helper/constants.dart';
import 'package:facebook/feature/presentation/widgets/camera_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileImage extends StatelessWidget {
  final double? raduis;
  final bool? isDesktop;
  const ProfileImage({super.key, this.raduis, this.isDesktop = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: isDesktop == true ? 100 : 50,
          backgroundImage: AssetImage(AppImage.profile),
        ),
        Positioned(right: isDesktop == true ? 20 : 0, child: CameraIcon()),
      ],
    );
  }
}
