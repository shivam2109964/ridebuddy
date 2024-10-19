import 'package:flutter/material.dart';
import 'package:ridebuddy/Model/Widget/AppBar/appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: RideBuddyAppBar(),
      ),
    );
  }
}
