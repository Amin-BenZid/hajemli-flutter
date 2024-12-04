import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hajamli/constants.dart';
import 'package:hajamli/views/client/drawerwidget.dart';

import '../../appBar.dart';

class BarberProfile extends StatefulWidget {
  const BarberProfile({super.key});

  @override
  State<BarberProfile> createState() => _BarberProfileState();
}

class _BarberProfileState extends State<BarberProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HajamliAppBar(),
      drawer: const ClientDrawer(),
      backgroundColor: bg_color,
      body: Column(
        children: [
          const SizedBox(height: 20,),
          const Center(child: Image(image: AssetImage("lib/assets/6.png"),width: 290,)),
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(width: 320,decoration: const BoxDecoration(
              color: secondary_color,
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
            ),),
          ))
        ],
      ),
    );
  }
}
