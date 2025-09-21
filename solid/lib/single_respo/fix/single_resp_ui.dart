import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid/single_respo/fix/manager/cubit/controller_cubit.dart';
import 'package:solid/single_respo/fix/user_repo.dart';

class SingleRespUi extends StatelessWidget {
  const SingleRespUi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        return ControllerCubit(UserRepo(Dio()))..fetchUsers();
      },
      child: BlocBuilder<ControllerCubit, ControllerState>(
        builder: (context, state) {
          if (state is ControllerLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is ControllerError) {
            return Center(child: Text(state.error));
          }
          return const Scaffold(
            body: Center(child: Text('Single Responsibility')),
          );
        },
      ),
    );
  }
}
