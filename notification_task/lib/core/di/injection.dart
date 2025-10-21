import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:notification_task/core/network/api_services.dart';
import 'package:notification_task/core/utils/dio_factory.dart';
import 'package:notification_task/features/home/data/data_source/home_remote_data_source.dart';
import 'package:notification_task/features/home/data/repo_imp/home_repo_imp.dart';
import 'package:notification_task/features/home/domain/use_case/home_use_case.dart';
import 'package:notification_task/features/home/presentation/manager/get_notification/notification_cubit.dart';

final getIt = GetIt.instance;
Future<void> init() async {
  final dio = DioFactory.getDio();

  getIt.registerLazySingleton<Dio>(() => dio);

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  // cubit

  getIt.registerLazySingleton<NotificationCubit>(
    () => NotificationCubit(getIt<FetchNotificationUseCase>()),
  );

  getIt.registerLazySingleton<FetchNotificationUseCase>(
    () => FetchNotificationUseCase(homRepo: getIt<HomeRepoImp>()),
  );
  // repo
  getIt.registerLazySingleton<HomeRepoImp>(
    () => HomeRepoImp(homeRemoteDataSource: getIt<HomeRemoteDataSource>()),
  );
  // data source
  getIt.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(apiService: getIt<ApiService>()),
  );
}
