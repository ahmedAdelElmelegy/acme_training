import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:notification_task/core/network/api_services.dart';
import 'package:notification_task/features/home/data/models/notification/Response/notification_data.dart';
import 'package:notification_task/features/home/data/models/notification/body/notification_request_body.dart';
import 'package:notification_task/features/home/domain/entity/notification_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<NotificationEntity>> fetchNotifications(
    NotificationRequestBody params,
  );
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  ApiService apiService;
  HomeRemoteDataSourceImpl({required this.apiService});
  @override
  Future<List<NotificationEntity>> fetchNotifications(
    NotificationRequestBody params,
  ) async {
    String url = dotenv.env['NotificationUrl']!;
    final response = await apiService.get(
      endpoint: url,

      query: params.toJson(),
    );
    List<NotificationEntity> notificationList = [];
    for (var element in response['data']['data']) {
      notificationList.add(NotificationData.fromJson(element));
    }
    return notificationList;
  }
}
