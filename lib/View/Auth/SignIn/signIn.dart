import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridebuddy/Model/Auth/User.dart';
import 'package:ridebuddy/View-Model/SignIn/sign_in_bloc.dart';
import 'package:ridebuddy/View/Auth/SignUp/signUp.dart';
import 'package:ridebuddy/View/Home/home.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  late UserModel user;

  bool _hasNavigated = false; // Flag to ensure navigation happens once

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        centerTitle: true,
        title: Text.rich(
          style: GoogleFonts.philosopher(
            fontWeight: FontWeight.w700,
          ),
          const TextSpan(
            children: [
              TextSpan(text: "Ride"),
              TextSpan(
                text: "Buddy",
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
      body: BlocListener<SignInBloc, SignInState>(
        listener: (context, state) {
          if (state is SignInLoadingState) {
            const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SignInLoadedState && !_hasNavigated) {
            _hasNavigated =
                true; // Set flag to true to prevent further navigation
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
            );
          } else if (state is SignInError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  state.toString(),
                ),
              ),
            );
          }
        },
        child: BlocBuilder<SignInBloc, SignInState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Form(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Sign In",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: emailEditingController,
                        enabled: true,
                        decoration: InputDecoration(
                          enabled: true,
                          filled: true,
                          labelText: "Email",
                          labelStyle: GoogleFonts.poppins(),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 30,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: passwordEditingController,
                        enabled: true,
                        decoration: InputDecoration(
                          enabled: true,
                          filled: true,
                          labelText: "Password",
                          labelStyle: GoogleFonts.poppins(),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 30,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: MaterialButton(
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                          child: Text(
                            "Forget Password ?",
                            style: GoogleFonts.poppins(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          String email = emailEditingController.text;
                          String password = passwordEditingController.text;
                          user = UserModel(email: email, password: password);
                          BlocProvider.of<SignInBloc>(context)
                              .add(SignInDetail(user));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: const BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Sign In",
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "or",
                        style: GoogleFonts.poppins(),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            ),
                          );
                        },
                        child: Text.rich(
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                          ),
                          const TextSpan(
                            children: [
                              TextSpan(
                                text: "Create ",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: "Account",
                                style: TextStyle(
                                  color: Colors.orange,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
