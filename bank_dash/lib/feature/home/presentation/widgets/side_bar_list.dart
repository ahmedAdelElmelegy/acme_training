import 'package:bank_dash/core/utils/app_constants.dart';
import 'package:bank_dash/feature/home/presentation/widgets/side_bar_item.dart';
import 'package:flutter/material.dart';

class SidBarList extends StatefulWidget {
  const SidBarList({super.key});

  @override
  State<SidBarList> createState() => _SidBarListState();
}

class _SidBarListState extends State<SidBarList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: AppConstants.sideBarItems.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: SidBarItem(
          model: AppConstants.sideBarItems[index],
          isSelected: index == selectedIndex,
        ),
      ),
    );
  }
}
