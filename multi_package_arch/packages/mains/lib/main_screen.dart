import 'package:category/category.dart';
import 'package:core/helper/constants.dart';
import 'package:core/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home/presentation/pages/home_screen.dart';
import 'package:map/map.dart';
import 'package:setting/settings.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = '/main-screen';
  const MainScreen({super.key});

  static const List<Widget> screens = [
    HomeScreen(),
    CategoryScreen(),
    MapScreen(),
    SettingScreen(),
  ];

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  void onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 64.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildBottomNavBar(
                onTap: () => onItemTapped(0),
                icon: _currentIndex == 0
                    ? AppIcons.homeIconSelected
                    : AppIcons.homeIcon),
            _buildBottomNavBar(
                onTap: () => onItemTapped(1),
                icon: _currentIndex == 1
                    ? AppIcons.categoryIconSelected
                    : AppIcons.categoryIcon),
            _buildBottomNavBar(
                onTap: () => onItemTapped(2),
                icon: _currentIndex == 2
                    ? AppIcons.mapIconSelected
                    : AppIcons.mapIcon),
            _buildBottomNavBar(
                onTap: () => onItemTapped(3),
                icon: _currentIndex == 3
                    ? AppIcons.settingsIconSelected
                    : AppIcons.settingsIcon),
          ],
        ),
      ),
      body: SafeArea(child: MainScreen.screens[_currentIndex]),
    );
  }

  Widget _buildBottomNavBar({required String icon, Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: SvgIcon(icon),
    );
  }
}
