import 'package:docdoc_app/features/login/data/model/login_request_body.dart';
import 'package:docdoc_app/features/login/logic/login_state.dart';
import 'package:docdoc_app/features/login/data/repositry/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void emitLoginState(LoginRequesBody loginRequesBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequesBody);
    response.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.failure.message ?? ''));
    });
  }
}
