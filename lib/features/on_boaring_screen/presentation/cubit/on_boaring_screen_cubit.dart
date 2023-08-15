import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'on_boaring_screen_state.dart';

class OnBoaringScreenCubit extends Cubit<OnBoaringScreenState> {
  OnBoaringScreenCubit() : super(OnBoaringScreenInitial());
}
