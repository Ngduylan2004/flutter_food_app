part of 'register_bloc.dart';

class RegisterEvent {}

class RegisterEventNextStep extends RegisterEvent {
  final String fullName;
  final String email;
  final String password;

  RegisterEventNextStep(
      {required this.fullName, required this.email, required this.password});
}
