import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/features/login_screen/presentation/cubit/login_screen_cubit.dart';
import 'package:todo/features/splash_screen/presentation/cubit/splash_screen_cubit.dart';
import 'package:todo/features/splash_screen/presentation/pages/splash_screen.dart';
import 'package:todo/core/utils/injection_container.dart' as sl;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => sl.di<SplashScreenCubit>()),
          BlocProvider(create: (_) => sl.di<LoginScreenCubit>()),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        ));
  }
}
