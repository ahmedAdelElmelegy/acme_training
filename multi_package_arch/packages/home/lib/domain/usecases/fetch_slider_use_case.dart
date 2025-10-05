import 'package:dartz/dartz.dart';
import 'package:home/domain/repositories/home_repo.dart';
import 'package:home/domain/entities/slider_entity.dart';
import 'package:core/error/failure.dart';
import 'package:core/use_case/no_parameter_use_case.dart';

class FetchSliderUseCase extends NoParameterUseCase<List<SliderEntity>> {
  final HomeRepo homeRepo;
  FetchSliderUseCase({required this.homeRepo});
  @override
  Future<Either<Failure, List<SliderEntity>>> call() async {
    return await homeRepo.getSliders();
  }
}
// use case , entity , repo  done
