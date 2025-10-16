import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:notification_task/core/error/failure.dart';
import 'package:notification_task/features/home/data/data_source/home_remote_data_source.dart';
import 'package:notification_task/features/home/data/models/notification/body/notification_request_body.dart';
import 'package:notification_task/features/home/domain/entity/notification_entity.dart';
import 'package:notification_task/features/home/domain/repo/home_repo.dart';

class HomeRepoImp extends HomeRepo {
  HomeRemoteDataSource homeRemoteDataSource;
  HomeRepoImp({required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, List<NotificationEntity>>> fetchNotifications(
    NotificationRequestBody params,
  ) async {
    try {
      List<NotificationEntity> notificationList;
      notificationList = await homeRemoteDataSource.fetchNotifications(params);
      return Right(notificationList);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      rethrow;
    }
  }
}
