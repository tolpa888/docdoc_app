import 'package:docdoc_app/core/networking/api_service.dart';
import 'package:docdoc_app/core/networking/dio_factory.dart';
import 'package:docdoc_app/features/login/data/repositry/login_repo.dart';
import 'package:docdoc_app/features/login/logic/login_cubit.dart';
import'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt () async{
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));


  //Home
}
