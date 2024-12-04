import 'package:flutter/material.dart';
import 'package:hajamli/views/client/BarberProfile.dart';
import 'package:hajamli/views/client/mainmenu.dart';
import 'package:hajamli/views/client/signup.dart';
import 'package:hajamli/views/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUpScreen(),
    );
  }
}

