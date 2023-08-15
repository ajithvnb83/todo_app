import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'splash_screen_state.dart';

class SplashScreenCubit extends Cubit<SplashScreenState> {
  SplashScreenCubit() : super(SplashScreenInitial());
}
