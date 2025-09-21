import 'package:facebook/core/helper/spacing.dart';
import 'package:facebook/feature/presentation/widgets/follower_number.dart';
import 'package:flutter/material.dart';

class ProfileFollowerNumbers extends StatelessWidget {
  final bool? isDesktop;
  const ProfileFollowerNumbers({super.key, this.isDesktop = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FollowerNumber(isDesktop: isDesktop),
        horizontalSpace(12),
        FollowerNumber(isDesktop: isDesktop),
      ],
    );
  }
}
