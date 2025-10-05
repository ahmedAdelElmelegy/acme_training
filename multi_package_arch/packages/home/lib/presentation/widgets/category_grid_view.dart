import 'package:core/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home/presentation/manager/cubit/get_category_cubit.dart';
import 'package:home/presentation/widgets/category_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<GetCategoryCubit, GetCategoryState>(
      builder: (context, state) {
        final cubit = context.read<GetCategoryCubit>();

        if (state is GetCategoryFailure) return Text(state.error);

        return GridView.builder(
          itemCount: 8,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: size.width < 600 ? 4 : 8,
            childAspectRatio: .6,
            crossAxisSpacing: 4.w,
            mainAxisSpacing: 4.h,
          ),
          itemBuilder: (context, index) => state is GetCategoryLoading
              ? LoadingWidget()
              : GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push('/product');
                  },
                  child: CategoryItem(categoryData: cubit.categories[index])),
        );
      },
    );
  }
}
