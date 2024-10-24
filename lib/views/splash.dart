import 'package:flutter/material.dart';
import 'dart:async';

import 'package:hajamli/views/mainScreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startsplashtimer() async {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const MainScreen()),
            (Route<dynamic> route) => false,
      );
    });
  }

  @override
  void initState() {
    super.initState();
    startsplashtimer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffEEEEEE),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("lib/assets/2.png"),
        ],
      ),
    );
  }
}
