import 'package:dartz/dartz.dart';
import 'package:notification_task/core/error/failure.dart';

abstract class ParameterUseCase<Type, Parameter> {
  Future<Either<Failure, Type>> call(Parameter parm);
}
