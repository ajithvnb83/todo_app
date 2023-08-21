import 'package:dartz/dartz.dart';
import 'package:todo/core/failure/failures.dart';
import 'package:todo/core/usecase/usecase.dart';
import 'package:todo/features/signup_screen/domain/entities/sign_up_request_entity.dart';
import 'package:todo/features/signup_screen/domain/entities/signup_response_entity.dart';

class SignUpUseCase extends UseCase<SignUpResponseEntity, SignUpRequestEntity> {
  @override
  Future<Either<Failure, SignUpResponseEntity>> call(
      SignUpRequestEntity params) {
    throw UnimplementedError();
  }
}
