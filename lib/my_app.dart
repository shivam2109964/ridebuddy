import 'package:flutter/material.dart';
import 'package:ridebuddy/model/routing.dart';
import 'package:ridebuddy/view/welcome_page/welcome_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ridebuddy/view_model/auth/sign_in/sign_in_bloc.dart';
import 'package:ridebuddy/view_model/auth/sign_up/signup_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignupBloc(),
        ),
        BlocProvider(
          create: (context) => SignInBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        onGenerateRoute: (settings) => generateRoute(settings),
        home: const Welcome(),
      ),
    );
  }
}
