import 'package:dartz/dartz.dart';
import 'package:todo/core/failure/failures.dart';
import 'package:todo/features/login_screen/domain/entities/login_response_entity.dart';

import '../entities/login_request_entity.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginResponseEntity>> userLogin(
      LoginRequestEntity requestEntity);
}
