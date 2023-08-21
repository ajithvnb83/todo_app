import 'package:todo/features/signup_screen/domain/entities/signup_response_entity.dart';

class SignUpResponseModel extends SignUpResponseEntity {
  const SignUpResponseModel({required super.userName});

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) {
    return SignUpResponseModel(userName: json["userName"]);
  }
}
