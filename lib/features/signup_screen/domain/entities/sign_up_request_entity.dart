import 'package:equatable/equatable.dart';

class SignUpRequestEntity extends Equatable {
  final String displayName;
  final String email;
  final String password;
  const SignUpRequestEntity(
      {required this.displayName, required this.email, required this.password});
  @override
  List<Object?> get props => [];
}
