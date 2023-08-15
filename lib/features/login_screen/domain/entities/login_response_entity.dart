import 'package:equatable/equatable.dart';

class LoginResponseEntity extends Equatable {
  final String email;
  final String password;
  const LoginResponseEntity({required this.email, required this.password});
  @override
  List<Object?> get props => [];
}
