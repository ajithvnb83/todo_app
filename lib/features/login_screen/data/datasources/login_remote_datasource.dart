import 'package:todo/core/auth/auth.dart';
import 'package:todo/features/login_screen/data/models/login_response_model.dart';
import 'package:todo/features/login_screen/domain/entities/login_request_entity.dart';

abstract class LoginRemoteDataSource {
  Future<LoginResponseModel> loginUser(LoginRequestEntity requestEntity);
}

class LoginRemoteDataSourceImpl extends LoginRemoteDataSource {
  @override
  Future<LoginResponseModel> loginUser(LoginRequestEntity requestEntity) async {
    var auth = await AuthService().signInWithEmailAndPassword(
        requestEntity.email, requestEntity.password);
    return LoginResponseModel.fromJson(const {'Q': "email"});
  }
}
