import 'package:circle/core/error/failure.dart';
import 'package:circle/feature/home/data/data_source/home_data_source.dart';
import 'package:circle/feature/home/domain/entity/banner_entity.dart';
import 'package:circle/feature/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  HomeRepoImp({required this.homeRemoteDataSource});

  @override
  Future<Either<Failure, List<SliderEntity>>> getSliders() async {
    try {
      List<SliderEntity> sliderList;
      sliderList = await homeRemoteDataSource.getSliders();
      return Right(sliderList);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      rethrow;
    }
  }
}
// home repo imp 
// model 
