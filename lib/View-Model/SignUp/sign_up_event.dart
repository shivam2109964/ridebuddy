part of 'sign_up_bloc.dart';

abstract class SignUpEvent {}

class UserDetails extends SignUpEvent {
  UserModel user;
  UserDetails(this.user);
}
