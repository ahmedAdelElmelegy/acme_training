import 'package:core/data/data_source/api_services.dart';
import 'package:core/utils/dio_factory.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:home/data/datasources/home_data_source.dart';
import 'package:home/data/repositories/home_repo_imp.dart';
import 'package:home/domain/usecases/fetch_category_use_case.dart';
import 'package:home/domain/usecases/fetch_slider_use_case.dart';
import 'package:home/presentation/manager/cubit/get_category_cubit.dart';
import 'package:home/presentation/manager/get_slider/slider_cubit.dart';
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
  getIt.registerLazySingleton<GetCategoryCubit>(
    () => GetCategoryCubit(getIt<FetchCategoryUseCase>()),
  );
  // use case

  getIt.registerLazySingleton<FetchSliderUseCase>(
    () => FetchSliderUseCase(homeRepo: getIt<HomeRepoImp>()),
  );
  getIt.registerLazySingleton<FetchCategoryUseCase>(
    () => FetchCategoryUseCase(categoryRepo: getIt<HomeRepoImp>()),
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
