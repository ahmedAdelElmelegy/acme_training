import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization_task/feature/home/presentation/cubit/local_cubit.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LocalCubit, LocalState>(
        builder: (context, state) {
          final json = context.read<LocalCubit>().json;
          if (state is LocalLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is LocalError) {
            return Center(child: Text(state.failure.errMessage));
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(json['lang'])],
            ),
          );
        },
      ),
    );
  }
}
