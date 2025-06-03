// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:kagi_demo/core/errors/app_error.dart';

typedef ErrorOrType<T> = Either<AppError, T>;
