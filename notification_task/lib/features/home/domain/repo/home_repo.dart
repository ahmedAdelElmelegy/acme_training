import 'package:dartz/dartz.dart';
import 'package:notification_task/core/error/failure.dart';
import 'package:notification_task/features/home/data/models/notification/body/notification_request_body.dart';
import 'package:notification_task/features/home/domain/entity/notification_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<NotificationEntity>>> fetchNotifications(
    NotificationRequestBody params,
  );
}
