import 'package:dio/dio.dart';
import 'package:docdoc_app/core/networking/api_constants.dart';
import 'package:docdoc_app/core/networking/api_error_model.dart';

enum DataSource {
  SUCCESS,
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTORISED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECIEVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  DEFAULT
}

class ResponseCode {
  static const int SUCCESS = 200; // success with data
  static const int NO_CONTENT = 201; // success with no data (no content)
  static const int BAD_REQUEST = 400; // failure, API rejected request
  static const int UNAUTORISED = 401; // failure, user is not authorised
  static const int FORBIDDEN = 403; //  failure, API rejected request
  static const int INTERNAL_SERVER_ERROR = 500; // failure, crash in server side
  static const int NOT_FOUND = 404; // failure, not found

  // local status code
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECIEVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int DEFAULT = -7;
}

class ResponseMessage {
  static const String SUCCESS = ApiErrors.SUCCESS; // success with data
  static const String NO_CONTENT =
      ApiErrors.NO_CONTENT; // success with no data (no content)
  static const String BAD_REQUEST =
      ApiErrors.BAD_REQUEST; // failure, API rejected request
  static const String UNAUTORISED =
      ApiErrors.UNAUTORISED; // failure, user is not authorised
  static const String FORBIDDEN =
      ApiErrors.FORBIDDEN; //  failure, API rejected request
  static const String INTERNAL_SERVER_ERROR =
      ApiErrors.INTERNAL_SERVER_ERROR; // failure, crash in server side
  static const String NOT_FOUND =
      ApiErrors.NOT_FOUND; // failure, crash in server side

  // local status code
  static const String CONNECT_TIMEOUT = ApiErrors.CONNECT_TIMEOUT;
  static const String CANCEL = ApiErrors.CANCEL;
  static const String RECIEVE_TIMEOUT = ApiErrors.RECIEVE_TIMEOUT;
  static const String SEND_TIMEOUT = ApiErrors.SEND_TIMEOUT;
  static const String CACHE_ERROR = ApiErrors.CACHE_ERROR;
  static const String NO_INTERNET_CONNECTION = ApiErrors.NO_INTERNET_CONNECTION;
  static const String DEFAULT = ApiErrors.DEFAULT;
}

extension DataSourceExtension on DataSource {
  ApiErrorModel getFailure() {
    switch (this) {
      case DataSource.NO_CONTENT:
        return ApiErrorModel(
            code: ResponseCode.NO_CONTENT, message: ResponseMessage.NO_CONTENT);

      case DataSource.SUCCESS:
        return ApiErrorModel(
            code: ResponseCode.SUCCESS, message: ResponseMessage.SUCCESS);

      case DataSource.BAD_REQUEST:
        return ApiErrorModel(
            code: ResponseCode.BAD_REQUEST,
            message: ResponseMessage.BAD_REQUEST);

      case DataSource.UNAUTORISED:
        return ApiErrorModel(
            code: ResponseCode.UNAUTORISED,
            message: ResponseMessage.UNAUTORISED);

      case DataSource.FORBIDDEN:
        return ApiErrorModel(
            code: ResponseCode.FORBIDDEN, message: ResponseMessage.FORBIDDEN);

      case DataSource.INTERNAL_SERVER_ERROR:
        return ApiErrorModel(
            code: ResponseCode.INTERNAL_SERVER_ERROR,
            message: ResponseMessage.INTERNAL_SERVER_ERROR);

      case DataSource.NOT_FOUND:
        return ApiErrorModel(
            code: ResponseCode.NOT_FOUND, message: ResponseMessage.NOT_FOUND);

      case DataSource.CONNECT_TIMEOUT:
        return ApiErrorModel(
            code: ResponseCode.CONNECT_TIMEOUT,
            message: ResponseMessage.CONNECT_TIMEOUT);
      case DataSource.CANCEL:
        return ApiErrorModel(
            code: ResponseCode.CANCEL, message: ResponseMessage.CANCEL);
      case DataSource.RECIEVE_TIMEOUT:
        return ApiErrorModel(
            code: ResponseCode.RECIEVE_TIMEOUT,
            message: ResponseMessage.RECIEVE_TIMEOUT);
      case DataSource.SEND_TIMEOUT:
        return ApiErrorModel(
            code: ResponseCode.SEND_TIMEOUT,
            message: ResponseMessage.SEND_TIMEOUT);
      case DataSource.CACHE_ERROR:
        return ApiErrorModel(
            code: ResponseCode.CACHE_ERROR,
            message: ResponseMessage.CACHE_ERROR);
      case DataSource.NO_INTERNET_CONNECTION:
        return ApiErrorModel(
            code: ResponseCode.NO_INTERNET_CONNECTION,
            message: ResponseMessage.NO_INTERNET_CONNECTION);
      case DataSource.DEFAULT:
        return ApiErrorModel(
            code: ResponseCode.DEFAULT, message: ResponseMessage.DEFAULT);
    }
  }
}
class ErrorHandler implements Exception {
  late ApiErrorModel failure;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      // dio error so its an error from response of the API or from dio itself
      failure = _handleError(error);
    } else {
      // default error
      failure = DataSource.DEFAULT.getFailure();
    }
  }
}

ApiErrorModel _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.CONNECT_TIMEOUT.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.SEND_TIMEOUT.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.RECIEVE_TIMEOUT.getFailure();
    case DioExceptionType.badResponse:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return ApiErrorModel.fromJson(error.response!.data );

      } else {
        return DataSource.DEFAULT.getFailure();
      }
    case DioExceptionType.cancel:
      return DataSource.CANCEL.getFailure();
    default:
      return DataSource.DEFAULT.getFailure();
  }
}
class ApiInternalStatus{
  static const int Success = 0;
  static const int Failure = 1;
}
