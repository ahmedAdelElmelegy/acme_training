import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:notification_task/features/home/data/models/notification/body/notification_request_body.dart';
import 'package:notification_task/features/home/domain/entity/notification_entity.dart';
import 'package:notification_task/features/home/domain/use_case/home_use_case.dart';

part 'notification_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit(this.fetchNotificationUseCase)
    : super(NotificationInitial());
  List<NotificationEntity> notifications = [];
  FetchNotificationUseCase fetchNotificationUseCase;
  Future<void> fetchNotifications(NotificationRequestBody params) async {
    emit(NotificationLoading());

    final result = await fetchNotificationUseCase.call(params);
    result.fold((l) => emit(NotificationError(message: l.message)), (sucess) {
      notifications = sucess;
      emit(NotificationSuccess());
    });
  }
}
