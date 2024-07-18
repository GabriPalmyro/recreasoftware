part of 'login_cubit.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginResult extends LoginState {
  const LoginResult(this.result);
  final dynamic result;

  @override
  List<Object> get props => [result];
}

final class LoginError extends LoginState {
  const LoginError(this.message);
  final String message;

  @override
  List<Object> get props => [message];
}
