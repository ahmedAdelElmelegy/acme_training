import 'package:circle/core/data/data_source/api_services.dart';
import 'package:circle/core/utils/dio_factory.dart';
import 'package:circle/feature/home/data/data_source/home_data_source.dart';
import 'package:circle/feature/home/data/repo_imp/home_repo_imp.dart';
import 'package:circle/feature/home/domain/use_case/fetch_slider_use_case.dart';
import 'package:circle/feature/home/presentation/manager/cubit/slider_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
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
  // cubit

  getIt.registerLazySingleton<SliderCubit>(
    () => SliderCubit(getIt<FetchSliderUseCase>()),
  );
  // use case
  getIt.registerLazySingleton<FetchSliderUseCase>(
    () => FetchSliderUseCase(homRepo: getIt<HomeRepoImp>()),
  );
  // repo
  getIt.registerLazySingleton<HomeRepoImp>(
    () => HomeRepoImp(
      homeRemoteDataSource: getIt<HomeRemoteDataSourceImplement>(),
    ),
  );
  // data source
  getIt.registerLazySingleton<HomeRemoteDataSourceImplement>(
    () => HomeRemoteDataSourceImplement(apiService: getIt<ApiService>()),
  );
}
