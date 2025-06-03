// Project imports:
import 'package:kagi_demo/core/constants/app_constants.dart';

class AppError {
  AppError({this.message = Constants.defaultError});
  String message;

  @override
  String toString() => message;
}
