import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEEEEE),
          body: Column(
            children: [
              const SizedBox(height: 50,),
              const Center(child: Image(image: AssetImage("lib/assets/2.png"),height: 276,width: 276,)),
              const SizedBox(height: 20,),
              Container(width: 332,height: 301,color: const Color(0xff333333),)
            ],
          ),

    );
  }
}
