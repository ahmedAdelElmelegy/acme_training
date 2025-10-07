import 'package:fitness_app/feature/home/presentation/wigets/course_tap_item.dart';
import 'package:flutter/material.dart';

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
    return Row(
      children: List.generate(
        courseTap.length,
        (index) => Padding(
          padding: EdgeInsets.only(right: 12),
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: CourseTabItem(
              text: courseTap[index],
              isSelected: currentIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
