import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/repositry/logout_repo.dart';
import 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  final LogoutRepo _logoutRepo;

  LogoutCubit(this._logoutRepo) : super(const LogoutState.initial());

  void emitLogoutState() async {
    emit(const LogoutState.loading());
    final response = await _logoutRepo.logout();
    response.when(success: (logoutResponse) {
      emit(LogoutState.success(logoutResponse));
    }, failure: (error) {
      emit(LogoutState.error(error: error.failure.message ?? ''));
    });
  }
}
