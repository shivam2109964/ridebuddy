part of 'sign_in_bloc.dart';

abstract class SignInEvent {}

class SignInDetail extends SignInEvent {
  UserModel user;
  SignInDetail(this.user);
}
