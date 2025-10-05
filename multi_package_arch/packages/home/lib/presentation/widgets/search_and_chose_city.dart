import 'package:core/helper/spacing.dart';
import 'package:core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/widgets/chose_city.dart';

class SearchAndChoseCity extends StatelessWidget {
  const SearchAndChoseCity({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(onTap: () {}, child: const ChoseCity()),
        horizontalSpace(10),
        Expanded(
          child: CustomTextField(
            readonly: true,
            onTap: () {},
            hintText: 'search',
          ),
        ),
      ],
    );
  }
}
