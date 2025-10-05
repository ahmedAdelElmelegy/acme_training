import 'dart:async';

import 'package:core/error/failure.dart';
import 'package:dartz/dartz.dart';

// ignore: avoid_types_as_parameter_names
abstract class NoParameterUseCase<Type> {
  Future<Either<Failure, Type>> call();
}
