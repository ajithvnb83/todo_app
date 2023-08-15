import 'package:get_it/get_it.dart';
import 'package:todo/features/splash_screen/presentation/cubit/splash_screen_cubit.dart';

final di = GetIt.instance;

Future<void> init() async {
  di.registerLazySingleton<SplashScreenCubit>(() => SplashScreenCubit());
}
