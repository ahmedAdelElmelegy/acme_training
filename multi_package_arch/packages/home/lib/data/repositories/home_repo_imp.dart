import 'package:core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:home/data/datasources/home_data_source.dart';
import 'package:home/domain/entities/category_entity.dart';
import 'package:home/domain/entities/slider_entity.dart';
import 'package:home/domain/repositories/home_repo.dart';

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

  @override
  Future<Either<Failure, List<CategoryEntity>>> getCategories() async {
    try {
      List<CategoryEntity> categoryList;
      categoryList = await homeRemoteDataSource.getCategories();
      return Right(categoryList);
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
