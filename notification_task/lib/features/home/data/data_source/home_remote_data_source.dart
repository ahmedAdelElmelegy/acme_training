import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:notification_task/core/network/api_services.dart';
import 'package:notification_task/features/home/data/models/notification/Response/notification_model_data.dart';
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
    // final response =
    //  await apiService.get(
    //   endpoint: ApiEndpoints.notification,

    //   query: params.toJson(),
    // );

    final String jsonString = await rootBundle.loadString(
      'assets/data/notification.json',
    );

    final Map<String, dynamic> response = json.decode(jsonString);

    List<NotificationEntity> notificationList = [];
    for (var element in response['data']) {
      notificationList.add(NotificationModelData.fromJson(element));
    }
    return notificationList;
  }
}
