import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:hajamli/constants.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      body: Column(
        children: [
          const SizedBox(height: 50),
          const Center(
            child: Image(
              image: AssetImage("lib/assets/2.png"),
              height: 276,
              width: 276,
            ),
          ),
          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: 301,
              height: 332,
              decoration: BoxDecoration(
                color: secondary_color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  SizedBox(
                    width: 214,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primary_color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: bg_color),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    width: 214,
                    height: 48,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: primary_color),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: primary_color),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),


                  const Text(
                    "Or",
                    style: TextStyle(color: bg_color, fontSize: 20),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.facebook, color: primary_color,),
                        onPressed: () {

                        },
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        icon: const Icon(Ionicons.logo_google, color: primary_color,),
                        onPressed: () {

                        },
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        icon: const Icon(Icons.apple, color: primary_color,),
                        onPressed: () {

                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),
          const Text("© EL S.I.X - 2024",style: TextStyle(color: primary_color,fontSize: 15,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
