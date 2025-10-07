import 'package:fitness_app/feature/home/presentation/wigets/trending_course_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeTrendingCourseListView extends StatelessWidget {
  const HomeTrendingCourseListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            GoRouter.of(context).go('/main/home/trending_course_detail');
          },
          child: const TrendingCourseItem(),
        );
      },
    );
  }
}
