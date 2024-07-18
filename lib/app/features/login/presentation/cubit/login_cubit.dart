import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recreshow_system/app/features/login/domain/login_interactor.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginInteractor) : super(LoginInitial());
  final LoginInteractor _loginInteractor;

  Future<void> login(
    String username,
    String password,
    String unit,
  ) async {
    try {
      emit(LoginLoading());
      await _loginInteractor.login(username, password, unit);
      emit(LoginResult({}));
    } catch (e) {
      emit(LoginError(e.toString()));
    }
  }
}
