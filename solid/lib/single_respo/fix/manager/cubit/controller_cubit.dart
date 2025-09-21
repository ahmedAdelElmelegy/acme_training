import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:solid/single_respo/fix/user_repo.dart';

part 'controller_state.dart';

class ControllerCubit extends Cubit<ControllerState> {
  ControllerCubit(this.userRepo) : super(ControllerInitial());
  UserRepo userRepo;
  Future<void> fetchUsers() async {
    try {
      emit(ControllerLoading());
      final users = await userRepo.fetchUsers();
      emit(ControllerSuccess(users));
    } catch (e) {
      emit(ControllerError(e.toString()));
    }
  }
}
