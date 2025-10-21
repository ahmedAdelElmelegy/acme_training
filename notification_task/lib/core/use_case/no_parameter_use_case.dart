import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:notification_task/core/error/failure.dart';

// ignore: avoid_types_as_parameter_names
abstract class NoParameterUseCase<Type> {
  Future<Either<Failure, Type>> call();
}
