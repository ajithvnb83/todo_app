import 'package:todo/core/auth/auth.dart';
import 'package:todo/features/on_boaring_screen/data/models/signup_response_model.dart';
import 'package:todo/features/signup_screen/domain/entities/sign_up_request_entity.dart';

abstract class SignUpRemoreDataSource {
  Future<SignUpResponseModel> userSignUp(SignUpRequestEntity params);
}

class SignUpRemoteDataSourceImpl extends SignUpRemoreDataSource {
  @override
  Future<SignUpResponseModel> userSignUp(SignUpRequestEntity params) async {
    var auth = await AuthService().signUpWithEmailAndPassword(
        params.email, params.password, params.displayName);
    return SignUpResponseModel.fromJson(const {'Q': "email"});
  }
}
