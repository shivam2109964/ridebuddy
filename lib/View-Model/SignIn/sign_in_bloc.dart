import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ridebuddy/Model/Auth/User.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SignInBloc() : super(SignInInitial()) {
    on<SignInDetail>(
      (event, emit) async {
        try {
          emit(SignInLoadingState());
          await firebaseAuth.signInWithEmailAndPassword(
            email: event.user.email,
            password: event.user.password,
          );
          emit(SignInLoadedState());
        } catch (e) {
          emit(
            SignInError(
              e.toString(),
            ),
          );
        }
      },
    );
  }
}
