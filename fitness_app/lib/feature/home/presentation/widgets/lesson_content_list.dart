import 'package:fitness_app/feature/home/presentation/widgets/lesson_content_item.dart';
import 'package:flutter/material.dart';

class LessonContentList extends StatefulWidget {
  const LessonContentList({super.key});

  @override
  State<LessonContentList> createState() => _LessonContentListState();
}

class _LessonContentListState extends State<LessonContentList> {
  List<String> lessonItem = [
    'Introduction',
    'First steps',
    'Mental preparation',
    'Tactis',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: lessonItem.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => setState(() {
          currentIndex = index;
        }),
        child: LessonContentItem(
          title: lessonItem[index],
          isActive: currentIndex == index,
        ),
      ),
    );
  }
}
