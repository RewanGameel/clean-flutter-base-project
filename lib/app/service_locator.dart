import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_prefs.dart';
import 'network/api_app.dart';
import 'network/dio_factory.dart';
import 'network/network_info.dart';
import 'network/token.dart';

final locator = GetIt.instance;
// serviceLocator
///this general decency injection
Future<void> initAppModule() async {
  //shared preference instance
  final sharedPref = await SharedPreferences.getInstance();

  locator.registerLazySingleton<SharedPreferences>(() => sharedPref); //this create when call

  //instance app preferences

  locator.registerLazySingleton<AppPreferences>(() => AppPreferences(locator()));

  // network info
  locator.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(InternetConnectionChecker()));

  // dio factory
  locator.registerLazySingleton<DioFactory>(() => DioFactory(locator()));

  //app service client
  Dio dio = await locator<DioFactory>().getDio();
  locator.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));
}

///this login decency injection
initAuthModule() {
  //register RDS
  // if (!GetIt.I.isRegistered<AuthRemoteDataSource>()) {
  //   locator.registerLazySingleton<AuthRemoteDataSource>(() => AuthRemoteDataSourceImpl(locator()));
  // }
  //register REPO

  // if (!GetIt.I.isRegistered<Repository>()) {
  //   locator.registerLazySingleton<Repository>(() => AuthRepositoryImpl(locator(), locator()));
  // }
  //
  //     //register ALL USECASES
  // if (!GetIt.I.isRegistered<LoginUseCase>()) {
  //   locator.registerFactory<LoginUseCase>(() => LoginUseCase(locator()));
  // }
  // if (!GetIt.I.isRegistered<LogoutUseCase>()) {
  //   locator.registerFactory<LogoutUseCase>(() => LogoutUseCase(locator()));
  // }
}
