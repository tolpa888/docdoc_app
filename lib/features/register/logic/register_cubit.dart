import 'package:bloc/bloc.dart';
import 'package:docdoc_app/features/register/data/model/register_request_body.dart';
import 'package:docdoc_app/features/register/data/repositry/register_repo.dart';
import 'package:docdoc_app/features/register/logic/register_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this._registerRepo) : super(RegisterState.initial());
  final RegisterRepo _registerRepo;

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  void emitRegisterrState() async {
    emit(const RegisterState.loading());
    final response = await _registerRepo.register(RegisterRequestBody(
        name: nameController.text,
        phone: phoneController.text,
        gender: 0,
        password: passwordController.text,
        passwordConfirmation: confirmPasswordController.text,
        email: emailController.text));
    response.when(success: (loginResponse) {
      emit(RegisterState.success(loginResponse));
    }, failure: (error) {
      emit(RegisterState.error(error: error.failure.message ?? ''));
    });
  }
}
