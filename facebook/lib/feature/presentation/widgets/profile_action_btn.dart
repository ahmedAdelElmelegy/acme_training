import 'package:facebook/core/helper/spacing.dart';
import 'package:facebook/core/style/colors.dart';
import 'package:facebook/feature/presentation/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

class ProfileActionBtn extends StatelessWidget {
  const ProfileActionBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Custombtn(
                icon: Icons.analytics,
                text: 'Professional dashboard',
                textColor: Colors.white,
                color: ColorManager.blue,
              ),
            ),
            horizontalSpace(4),
            Expanded(
              flex: 2,
              child: Custombtn(
                text: 'Add to story',
                icon: Icons.add,
                color: ColorManager.grey,
              ),
            ),
          ],
        ),
        verticalSpace(12),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Custombtn(
                icon: Icons.campaign,
                text: "Advertise",

                color: ColorManager.grey,
              ),
            ),
            horizontalSpace(4),
            Custombtn(child: Icon(Icons.more_horiz)),
          ],
        ),
      ],
    );
  }
}
