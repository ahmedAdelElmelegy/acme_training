import 'package:circle/core/error/failure.dart';
import 'package:circle/feature/home/domain/entity/banner_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<SliderEntity>>> getSliders();
}
