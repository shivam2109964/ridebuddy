part of 'sign_up_bloc.dart';

abstract class SignUpState {}

final class SignUpInitial extends SignUpState {}

class SignUpLoadingState extends SignUpState {}

class SignUpLoadedState extends SignUpState {}

class SignUpErrorState extends SignUpState {
  String message;
  SignUpErrorState(this.message);
}
