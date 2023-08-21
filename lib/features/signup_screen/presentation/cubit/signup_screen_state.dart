part of 'signup_screen_cubit.dart';

abstract class SignupScreenState extends Equatable {
  const SignupScreenState();

  @override
  List<Object> get props => [];
}

class SignupScreenInitialState extends SignupScreenState {}

class SignupScreenLoadingState extends SignupScreenState {}

class SignupScreenSuccessState extends SignupScreenState {}

// ignore: must_be_immutable
class SignupScreenErrorState extends SignupScreenState {
  FailureWithMessage failureWithMessage;
  SignupScreenErrorState({required this.failureWithMessage});
}
