import 'package:fitness_app/core/helper/constants.dart';
import 'package:fitness_app/core/helper/spacing.dart';
import 'package:fitness_app/core/theme/colors.dart';
import 'package:fitness_app/core/widgets/responsive_layout.dart';
import 'package:fitness_app/core/widgets/svg_icon.dart';
import 'package:fitness_app/feature/home/presentation/screens/home_mobile_screen.dart';
import 'package:fitness_app/feature/home/presentation/screens/home_tablet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> screens = [
    ResponsiveLayout(
      mobile: (context) => const HomeMobileScreen(),
      tablet: (context) => const HomeTabletScreen(),
      desktop: (context) => Container(),
    ),
    Center(child: Text('bookMark')),
    Center(child: Text('search')),
    Center(child: Text('play')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.bg,
      body: SafeArea(child: screens[_currentIndex]),
      bottomNavigationBar: SizedBox(
        height: 64.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBottomNavigationBar(0, () => onItemTapped(0), AppIcon.home),
            _buildBottomNavigationBar(
              1,
              () => onItemTapped(1),
              AppIcon.bookmark,
            ),
            _buildBottomNavigationBar(3, () => onItemTapped(3), AppIcon.search),
            _buildBottomNavigationBar(2, () => onItemTapped(2), AppIcon.play),
          ],
        ),
      ),
    );
  }

  //
  Widget _buildBottomNavigationBar(int index, VoidCallback onTap, String icon) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        child: IntrinsicWidth(
          child: Column(
            children: [
              SvgIcon(
                icon,
                color: index == _currentIndex
                    ? ColorManager.primary
                    : Colors.grey,
              ),
              verticalSpace(4),
              Container(
                height: 3,
                decoration: BoxDecoration(
                  color: index == _currentIndex
                      ? ColorManager.primary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
