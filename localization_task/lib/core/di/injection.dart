import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:localization_task/core/network/api_services.dart';
import 'package:localization_task/core/utils/dio_factory.dart';
import 'package:localization_task/feature/home/data/repo/localization_repo.dart';
import 'package:localization_task/feature/home/presentation/cubit/local_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;
Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  final dio = DioFactory.getDio();

  getIt.registerLazySingleton<Dio>(() => dio);

  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  getIt.registerLazySingleton<ApiService>(
    () => ApiService(dio, sharedPreferences),
  );
  getIt.registerLazySingleton<LocalizationRepo>(
    () => LocalizationRepo(getIt<ApiService>()),
  );
  getIt.registerLazySingleton<LocalCubit>(
    () => LocalCubit(getIt<LocalizationRepo>()),
  );
  // cubit
}
