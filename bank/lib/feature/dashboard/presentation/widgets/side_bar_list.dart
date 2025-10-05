import 'package:bank/core/utils/app_constants.dart';
import 'package:bank/feature/dashboard/presentation/widgets/side_bar_item.dart';
import 'package:flutter/material.dart';

class SidBarList extends StatefulWidget {
  final void Function(int index)? function;
  const SidBarList({super.key, this.function});

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
          widget.function?.call(index);
          Navigator.pop(context);
        },
        child: SidBarItem(
          model: AppConstants.sideBarItems[index],
          isSelected: index == selectedIndex,
        ),
      ),
    );
  }
}
