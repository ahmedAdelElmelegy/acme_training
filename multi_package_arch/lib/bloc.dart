import 'package:core/di/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home/domain/usecases/fetch_category_use_case.dart';
import 'package:home/domain/usecases/fetch_slider_use_case.dart';
import 'package:home/presentation/manager/cubit/get_category_cubit.dart';
import 'package:home/presentation/manager/get_slider/slider_cubit.dart';

class GenerateMultiBloc extends StatelessWidget {
  final Widget child;
  const GenerateMultiBloc({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              SliderCubit(getIt<FetchSliderUseCase>())..getSlider(),
        ),
        BlocProvider(
          create: (context) =>
              GetCategoryCubit(getIt<FetchCategoryUseCase>())..getCategory(),
        ),
      ],
      child: child,
    );
  }
}
