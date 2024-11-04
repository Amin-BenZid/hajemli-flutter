import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hajamli/constants.dart';

class ClientMainMenu extends StatefulWidget {
  const ClientMainMenu({super.key});

  @override
  State<ClientMainMenu> createState() => _ClientMainMenuState();
}

class _ClientMainMenuState extends State<ClientMainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(image: AssetImage("lib/assets/3.png"),height: 100,),centerTitle: true,
        backgroundColor: bg_color,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: ImageIcon(
                AssetImage("lib/assets/menu.png"),
                size: 25,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      backgroundColor: bg_color,
      drawer: Drawer(
        backgroundColor: primary_color,
        width: 290,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(45),
            topRight: Radius.circular(45),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 50),
            Image(
              image: AssetImage("lib/assets/3.png"),
              width: 200,
              height: 100,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            Divider(thickness: 2, color: secondary_color),
            SizedBox(height: 20),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.person_2_rounded, color: secondary_color, size: 30),
                  onPressed: () {},
                ),
                SizedBox(width: 5),
                Text("Profile", style: TextStyle(fontSize: 20, color: bg_color)),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.punch_clock_rounded, color: secondary_color, size: 30),
                  onPressed: () {},
                ),
                SizedBox(width: 5),
                Text("History", style: TextStyle(fontSize: 20, color: bg_color)),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.language_rounded, color: secondary_color, size: 30),
                  onPressed: () {},
                ),
                SizedBox(width: 5),
                Text("Language", style: TextStyle(fontSize: 20, color: bg_color)),
              ],
            ),
            SizedBox(height: 160),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: secondary_color,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
              child: Text("Logout", style: TextStyle(color: bg_color)),
            ),
            SizedBox(height: 20),
            Divider(thickness: 2, color: secondary_color),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 10),
                Text("About Us", style: TextStyle(color: secondary_color, fontSize: 15, fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 10),
                Text("Contact :", style: TextStyle(color: secondary_color, fontSize: 15, fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 10),
                Text("jfhizfifz@gmail.com", style: TextStyle(color: secondary_color, fontSize: 15, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
      body: Column(children: [
        SizedBox(height: 40,),
        Center(child: Image(image: AssetImage("lib/assets/5.png"),width: 290,),),
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(width: 300,decoration: BoxDecoration(
                color: secondary_color,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
              ),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [


              ],),),
            ),
          ),
        )
      ],),
    );
  }
}
