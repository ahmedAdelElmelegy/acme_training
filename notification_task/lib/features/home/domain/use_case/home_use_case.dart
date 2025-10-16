import 'package:dartz/dartz.dart';
import 'package:notification_task/core/error/failure.dart';
import 'package:notification_task/core/use_case/parameter_use_case.dart';
import 'package:notification_task/features/home/data/models/notification/body/notification_request_body.dart';
import 'package:notification_task/features/home/domain/entity/notification_entity.dart';
import 'package:notification_task/features/home/domain/repo/home_repo.dart';

class FetchNotificationUseCase
    extends
        ParameterUseCase<List<NotificationEntity>, NotificationRequestBody> {
  final HomeRepo homRepo;
  FetchNotificationUseCase({required this.homRepo});
  @override
  Future<Either<Failure, List<NotificationEntity>>> call(
    NotificationRequestBody params,
  ) async {
    return await homRepo.fetchNotifications(params);
  }
}
// use case , entity , repo  done  