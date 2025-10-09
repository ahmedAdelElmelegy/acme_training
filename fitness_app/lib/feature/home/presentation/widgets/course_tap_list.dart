import 'package:fitness_app/feature/home/presentation/widgets/course_tap_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseTabList extends StatefulWidget {
  const CourseTabList({super.key});

  @override
  State<CourseTabList> createState() => _CourseTabListState();
}

class _CourseTabListState extends State<CourseTabList> {
  static List<String> courseTap = ['Lessons content', 'Support', 'Comments'];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          courseTap.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.only(right: 30.w),
              child: CourseTabItem(
                text: courseTap[index],
                isSelected: currentIndex == index,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
