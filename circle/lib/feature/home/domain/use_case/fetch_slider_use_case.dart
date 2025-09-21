import 'package:circle/core/error/failure.dart';
import 'package:circle/core/use_case/no_parameter_use_case.dart';
import 'package:circle/feature/home/domain/entity/banner_entity.dart';
import 'package:circle/feature/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchSliderUseCase extends NoParameterUseCase<List<SliderEntity>> {
  final HomeRepo homRepo;
  FetchSliderUseCase({required this.homRepo});
  @override
  Future<Either<Failure, List<SliderEntity>>> call() async {
    return await homRepo.getSliders();
  }
}
// use case , entity , repo  done  