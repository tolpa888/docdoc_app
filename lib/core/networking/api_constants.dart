class ApiConstants {
  static const baseUrl = 'https://vcare.integration25.com/api/';
  static const login = 'auth/login';
  static const register = 'auth/register';
}


class ApiErrors {
  static const String SUCCESS = 'success'; // success with data
  static const String NO_CONTENT = 'noContent'; // success with no data (no content)
  static const String BAD_REQUEST = 'badRequestError'; // failure, API rejected request
  static const String UNAUTORISED = 'unauthorizedError'; // failure, user is not authorised
  static const String FORBIDDEN = 'forbiddenError'; //  failure, API rejected request
  static const String INTERNAL_SERVER_ERROR = 'internalServerError'; // failure, crash in server side
  static const String NOT_FOUND = 'notFoundError'; // failure, crash in server side

// local status code
  static const String CONNECT_TIMEOUT = 'timeoutError';
  static const String CANCEL ='defaultError';
  static const String RECIEVE_TIMEOUT = 'timeoutError';
  static const String SEND_TIMEOUT = 'timeoutError';
  static const String CACHE_ERROR = 'cacheError';
  static const String NO_INTERNET_CONNECTION = 'NnInternetError';
  static const String DEFAULT = 'defaultError';
}















