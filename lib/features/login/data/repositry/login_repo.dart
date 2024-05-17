import 'package:docdoc_app/core/networking/api_error_handler.dart';
import 'package:docdoc_app/core/networking/api_result.dart';
import 'package:docdoc_app/core/networking/api_service.dart';
import 'package:docdoc_app/features/login/data/model/login_request_body.dart';
import 'package:docdoc_app/features/login/data/model/login_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login (LoginRequesBody loginRequesBody )async {

    try{
      final response = await _apiService.login(loginRequesBody);
      print(response);
      return ApiResult.success(response);

    }
    catch(error) {
      return
        ApiResult.failure(ErrorHandler.handle(error));
    }
    
  }

}