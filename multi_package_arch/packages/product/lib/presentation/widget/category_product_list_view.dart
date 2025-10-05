import 'package:core/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home/presentation/manager/cubit/get_category_cubit.dart';
import 'package:product/presentation/widget/category_product_item.dart';

class CategoryProductListView extends StatefulWidget {
  const CategoryProductListView({super.key});

  @override
  State<CategoryProductListView> createState() =>
      _CategoryProductListViewState();
}

class _CategoryProductListViewState extends State<CategoryProductListView> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 56.h,
        child: BlocBuilder<GetCategoryCubit, GetCategoryState>(
          builder: (context, state) {
            final cubit = context.read<GetCategoryCubit>();
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => state is GetCategoryLoading
                    ? LoadingWidget(
                        width: 50.w,
                        height: 50.h,
                      )
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        child: CategoryProductItem(
                          category: cubit.categories[index],
                          isActive: _currentIndex == index,
                        ),
                      ),
                itemCount:
                    state is GetCategoryLoading ? 2 : cubit.categories.length);
          },
        ));
  }
}
