part of 'login_bloc.dart';

class LoginEmailEvent extends LoginEvent {
  final String email;
  final String password;

  LoginEmailEvent({required this.email, required this.password});
}

class LoginEvent {}

class LoginGoogleEvent extends LoginEvent {}
