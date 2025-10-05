import 'package:core/helper/spacing.dart';
import 'package:core/theme/color_manager.dart';
import 'package:core/theme/styles.dart';
import 'package:core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product/presentation/widget/category_product_list_view.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Text('category'.tr(), style: TextStyles.font18MadaSemiBoldBlack),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              CustomTextField(hintText: 'search'.tr()),
              verticalSpace(16),
              CategoryProductListView(),
            ],
          ),
        ));
  }
}
