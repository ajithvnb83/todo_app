import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fogot_password_screen_state.dart';

class FogotPasswordScreenCubit extends Cubit<FogotPasswordScreenState> {
  FogotPasswordScreenCubit() : super(FogotPasswordScreenInitial());
}
