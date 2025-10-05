import 'package:dartz/dartz.dart';
import 'package:home/domain/entities/category_entity.dart';
import 'package:core/error/failure.dart';
import 'package:core/use_case/no_parameter_use_case.dart';
import 'package:home/domain/repositories/home_repo.dart';

class FetchCategoryUseCase extends NoParameterUseCase<List<CategoryEntity>> {
  final HomeRepo categoryRepo;
  FetchCategoryUseCase({required this.categoryRepo});
  @override
  Future<Either<Failure, List<CategoryEntity>>> call() async {
    return await categoryRepo.getCategories();
  }
}
// use case , entity , repo  done
