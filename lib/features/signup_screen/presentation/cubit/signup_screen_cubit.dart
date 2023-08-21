import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/core/failure/failures.dart';

part 'signup_screen_state.dart';

class SignupScreenCubit extends Cubit<SignupScreenState> {
  SignupScreenCubit() : super(SignupScreenInitialState());

  userSignup() async {
    emit(SignupScreenLoadingState());
  }
}
