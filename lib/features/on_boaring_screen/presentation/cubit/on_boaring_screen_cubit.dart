import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'on_boaring_screen_state.dart';

class OnBoaringScreenCubit extends Cubit<OnBoaringScreenState> {
  OnBoaringScreenCubit() : super(OnBoaringScreenInitial());
}
