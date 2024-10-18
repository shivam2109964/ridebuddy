import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RideBuddyAppBar extends StatelessWidget {
  const RideBuddyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.orangeAccent,
      title: Text(
        "Ride Buddy",
        style: GoogleFonts.poppins(),
      ),
    );
  }
}
