import 'package:circle/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class ParameterUseCase<Type, Parameter> {
  Future<Either<Failure, Type>> call(Parameter parm);
}
