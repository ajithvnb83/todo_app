import 'package:todo/features/login_screen/domain/entities/login_response_entity.dart';

class LoginResponseModel extends LoginResponseEntity {
  const LoginResponseModel({
    required super.email,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(email: json["email"]);
}
