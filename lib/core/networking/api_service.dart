import 'package:dio/dio.dart';
import 'package:docdoc_app/features/login/data/model/login_request_body.dart';
import 'package:docdoc_app/features/register/data/model/register_request_body.dart';
import 'package:retrofit/retrofit.dart';
import 'package:docdoc_app/core/networking/api_constants.dart';
import 'package:docdoc_app/features/login/data/model/login_response.dart';
import '../../features/home_pages/profile/setting/log_out/data/model/log_out_response.dart';
import '../../features/register/data/model/register_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequesBody loginRequesBody,
  );

  @POST(ApiConstants.register)
  Future<RegisterResponse> register(
    @Body() RegisterRequestBody registerRequestBody,
  );

  @POST(ApiConstants.logout)
  Future<LogoutResponse> logout();
}
