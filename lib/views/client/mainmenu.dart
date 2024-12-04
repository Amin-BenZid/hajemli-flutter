import 'package:flutter/material.dart';
import 'package:hajamli/appBar.dart';
import 'package:hajamli/constants.dart';
import 'package:hajamli/views/client/drawerwidget.dart';

class ClientMainMenu extends StatefulWidget {
  const ClientMainMenu({super.key});

  @override
  State<ClientMainMenu> createState() => _ClientMainMenuState();
}

class _ClientMainMenuState extends State<ClientMainMenu> {
  final TextEditingController codecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const HajamliAppBar(),
      backgroundColor: bg_color,
      drawer: const ClientDrawer(),
      body: Column(children: [
        const SizedBox(height: 40,),
        const Center(child: Image(image: AssetImage("lib/assets/5.png"),width: 280,),),
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(width: 300,decoration: const BoxDecoration(
                color: secondary_color,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
              ),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment:CrossAxisAlignment.center,children: [
                const SizedBox(height: 40,),
                SizedBox(height: 50,width: 200,
                  child: TextFormField(
                    controller: codecontroller,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Code",
                      hintStyle: const TextStyle(color: primary_color),
                      filled: true,
                      fillColor: secondary_color,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: primary_color),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: primary_color),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: primary_color),
                      ),
                    ),
                    style: const TextStyle(color: primary_color),
                  ),
                ),
                const SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {
                    // Add onPressed functionality
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary_color,
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Join',
                    style: TextStyle(color: bg_color),
                  ),
                ),
              ],),),
            ),
          ),
        )
      ],),
    );
  }
}
