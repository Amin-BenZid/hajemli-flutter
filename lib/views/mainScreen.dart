import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEEEEE),
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
                color: const Color(0xff333333),
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
                        backgroundColor: const Color(0xff93833D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
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
                        side: const BorderSide(color: Color(0xff93833D)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Color(0xff93833D)),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),


                  const Text(
                    "Or",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.facebook, color: Color(0xff93833D),),
                        onPressed: () {
                          // Handle Facebook login
                        },
                      ),
                      const SizedBox(width: 20), // Spacing between icons
                      IconButton(
                        icon: const Icon(Ionicons.logo_google, color: Color(0xff93833D),),
                        onPressed: () {

                        },
                      ),
                      const SizedBox(width: 10), // Spacing between icons
                      IconButton(
                        icon: const Icon(Icons.apple, color: Color(0xff93833D),),
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
          const Text("© EL S.I.X - 2024",style: TextStyle(color: Color(0xff93833D),fontSize: 15,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
