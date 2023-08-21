import 'package:dartz/dartz.dart';
import 'package:todo/core/failure/failures.dart';
import 'package:todo/core/usecase/usecase.dart';
import 'package:todo/features/login_screen/domain/entities/login_request_entity.dart';
import 'package:todo/features/login_screen/domain/entities/login_response_entity.dart';
import 'package:todo/features/login_screen/domain/repositories/login_repository.dart';

class LoginUseCase extends UseCase<LoginResponseEntity, LoginRequestEntity> {
  final LoginRepository loginRepository;
  LoginUseCase({required this.loginRepository});
  @override
  Future<Either<Failure, LoginResponseEntity>> call(
      LoginRequestEntity params) async {
    return await loginRepository.userLogin(params);
  }
}
