import 'package:flutter/material.dart';
import 'package:ridebuddy/View/Welcome/welcome.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Welcome(),
    );
  }
}
