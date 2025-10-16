import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:notification_task/core/error/failure.dart';

abstract class NoParameterUseCase<Type> {
  Future<Either<Failure, Type>> call();
}
