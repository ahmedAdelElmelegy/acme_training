import 'package:dartz/dartz.dart';
import 'package:notification_task/core/error/failure.dart';

// ignore: avoid_types_as_parameter_names
abstract class ParameterUseCase<Type, Parameter> {
  Future<Either<Failure, Type>> call(Parameter parm);
}
