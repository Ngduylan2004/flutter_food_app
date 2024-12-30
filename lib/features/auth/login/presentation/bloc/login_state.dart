part of 'login_bloc.dart';

class LoginEmailState extends LoginState {
  final String email;
  final String password;

  LoginEmailState({required this.email, required this.password});
}

class LoginFailure extends LoginState {
  final String message;

  LoginFailure({required this.message});
}

class LoginGoogleSuccess extends LoginState {}

class LoginLoading extends LoginState {}

class LoginState {}

class LoginSuccess extends LoginState {}
