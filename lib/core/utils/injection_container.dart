import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import 'package:todo/core/local_database/hive_helper.dart';
import 'package:todo/core/local_database/local_db.dart';
import 'package:todo/core/network/internet_connectivity.dart';

//Splash imports
import 'package:todo/features/splash_screen/presentation/cubit/splash_screen_cubit.dart';
//Login imports
import 'package:todo/features/login_screen/data/datasources/login_remote_datasource.dart';
import 'package:todo/features/login_screen/data/repositories/login_repository_impl.dart';
import 'package:todo/features/login_screen/domain/repositories/login_repository.dart';
import 'package:todo/features/login_screen/domain/usecases/login_usecase.dart';
import 'package:todo/features/login_screen/presentation/cubit/login_screen_cubit.dart';

final di = GetIt.instance;

Future<void> init() async {
  //Hive
  final CollectionBox box = await HiveDataBaseHelper.instance.todoBox;
  di.registerLazySingleton<CollectionBox>(() => box);
  di.registerLazySingleton<LocalDB>(() => LocalDB(box: di()));

  //internet connection
  di.registerLazySingleton<InternetConnectivity>(() => InternetConnectivity());

  di.registerFactory<SplashScreenCubit>(() => SplashScreenCubit());

  //Login
  di.registerFactory<LoginScreenCubit>(() => LoginScreenCubit());
  di.registerFactory<LoginUseCase>(() => LoginUseCase(loginRepository: di()));
  di.registerFactory<LoginRemoteDataSource>(() => LoginRemoteDataSourceImpl());
  di.registerFactory<LoginRepository>(
      () => LoginRepositoryImpl(loginRemoteDataSource: di()));
}
