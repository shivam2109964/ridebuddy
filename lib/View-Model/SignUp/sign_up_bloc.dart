import 'package:bloc/bloc.dart';
// ignore: unused_import
import 'package:meta/meta.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ridebuddy/Model/Auth/User.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SignUpBloc() : super(SignUpInitial()) {
    on<UserDetails>(
      (event, emit) async {
        try {
          emit(SignUpLoadingState());
          await firebaseAuth.createUserWithEmailAndPassword(
              email: event.user.email, password: event.user.password);
          emit(SignUpLoadedState());
        } catch (e) {
          emit(
            SignUpErrorState(
              e.toString(),
            ),
          );
        }
      },
    );
  }
}
