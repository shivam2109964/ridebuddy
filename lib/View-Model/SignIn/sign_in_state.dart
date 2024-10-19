part of 'sign_in_bloc.dart';

abstract class SignInState {}

final class SignInInitial extends SignInState {}

class SignInLoadingState extends SignInState {}

class SignInLoadedState extends SignInState {}

class SignInError extends SignInState {
  String message;
  SignInError(this.message);
}
