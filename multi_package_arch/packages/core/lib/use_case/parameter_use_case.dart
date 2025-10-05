import 'package:core/error/failure.dart';
import 'package:dartz/dartz.dart';

// ignore: avoid_types_as_parameter_names
abstract class ParameterUseCase<Type, Parameter> {
  Future<Either<Failure, Type>> call(Parameter parm);
}
