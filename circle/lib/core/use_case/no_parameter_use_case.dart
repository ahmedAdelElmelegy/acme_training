import 'dart:async';

import 'package:circle/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class NoParameterUseCase<Type> {
  Future<Either<Failure, Type>> call();
}
