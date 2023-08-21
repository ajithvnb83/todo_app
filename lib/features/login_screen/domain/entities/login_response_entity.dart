import 'package:equatable/equatable.dart';

class LoginResponseEntity extends Equatable {
  final String email;
  const LoginResponseEntity({required this.email});
  @override
  List<Object?> get props => [];
}
