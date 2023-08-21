import 'package:dartz/dartz.dart';
import 'package:todo/core/failure/failures.dart';
import 'package:todo/features/login_screen/data/datasources/login_remote_datasource.dart';
import 'package:todo/features/login_screen/domain/entities/login_request_entity.dart';
import 'package:todo/features/login_screen/domain/entities/login_response_entity.dart';
import 'package:todo/features/login_screen/domain/repositories/login_repository.dart';

class LoginRepositoryImpl extends LoginRepository {
  final LoginRemoteDataSource loginRemoteDataSource;
  LoginRepositoryImpl({required this.loginRemoteDataSource});
  @override
  Future<Either<Failure, LoginResponseEntity>> userLogin(
      LoginRequestEntity requestEntity) async {
    try {
      var res = await loginRemoteDataSource.loginUser(requestEntity);
      return Right(res);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
