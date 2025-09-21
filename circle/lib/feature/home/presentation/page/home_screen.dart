import 'package:circle/feature/home/presentation/manager/cubit/slider_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<SliderCubit, SliderState>(
          builder: (context, state) {
            if (state is SliderLoading) {
              return const CircularProgressIndicator();
            } else if (state is SliderError) {
              return Text(state.message);
            }
            final sliderList = context.read<SliderCubit>().sliderList;
            return Image.network(sliderList[0].imageEntity);
          },
        ),
      ),
    );
  }
}
