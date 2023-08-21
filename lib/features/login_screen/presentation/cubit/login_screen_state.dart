part of 'login_screen_cubit.dart';

abstract class LoginScreenState extends Equatable {
  const LoginScreenState();

  @override
  List<Object> get props => [];
}

class LoginScreenInitialState extends LoginScreenState {}

class LoginScreenLoadingState extends LoginScreenState {}

class LoginScreenSuccessState extends LoginScreenState {
  final String isSuccess;
  const LoginScreenSuccessState({
    required this.isSuccess,
  });
}

class LoginScreenErrorState extends LoginScreenState {
  final String message;
  const LoginScreenErrorState({
    required this.message,
  });
}
