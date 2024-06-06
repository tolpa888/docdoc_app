import 'package:docdoc_app/features/home_pages/profile/setting/log_out/data/model/log_out_response.dart';
import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';

class LogoutRepo {
  final ApiService _apiService;

  LogoutRepo(this._apiService);

  Future<ApiResult<LogoutResponse>> logout() async {
    try {
      final response = await _apiService.logout();
      print(response);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
