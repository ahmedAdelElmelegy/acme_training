import 'package:home/domain/entities/category_entity.dart';
import 'package:home/domain/entities/slider_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:core/error/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<SliderEntity>>> getSliders();
  Future<Either<Failure, List<CategoryEntity>>> getCategories();
}
