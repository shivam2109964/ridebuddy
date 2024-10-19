import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridebuddy/View/Auth/SignUp/signUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
      body: Padding(
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
                Container(
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
      ),
    );
  }
}
