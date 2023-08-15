import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'fogot_password_screen_state.dart';

class FogotPasswordScreenCubit extends Cubit<FogotPasswordScreenState> {
  FogotPasswordScreenCubit() : super(FogotPasswordScreenInitial());
}
