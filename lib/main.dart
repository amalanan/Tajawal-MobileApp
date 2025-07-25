import 'package:flutter/material.dart';
import 'Screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //for the red 'debug' word shown in the emulator
      home: LoginScreen(), //the first screen of the App
    );
  }
}
