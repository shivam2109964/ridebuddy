import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridebuddy/View/Auth/SignIn/signIn.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                "Make Trip Ride Buddy",
                style: GoogleFonts.abyssinicaSil(
                  fontWeight: FontWeight.bold,
                  fontSize: 140,
                  color: Colors.black12,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 1,
                  height: 50,
                  color: Colors.transparent,
                  child: Text.rich(
                    style: GoogleFonts.philosopher(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                    const TextSpan(
                      children: [
                        TextSpan(
                          text: "Ride",
                        ),
                        TextSpan(
                          text: "Buddy",
                          style: TextStyle(color: Colors.orange),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            height: MediaQuery.of(context).size.height * 0.6,
            top: MediaQuery.of(context).size.height * 0.08,
            left: 100,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                "assets/net.png",
              ),
            ),
          ),
          Positioned(
            height: MediaQuery.of(context).size.height * 0.45,
            top: MediaQuery.of(context).size.height * 0.15,
            child: Image.asset("assets/brandCar.png"),
          ),
          Positioned(
            height: MediaQuery.of(context).size.height * 0.35,
            bottom: 0,
            left: -70,
            child: RotatedBox(
              quarterTurns: 2,
              child: Image.asset("assets/circleEarth.png"),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: Colors.orange,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignIn(),
            ),
          );
        },
        child: const Icon(
          Icons.start,
          color: Colors.white,
        ),
      ),
    );
  }
}
