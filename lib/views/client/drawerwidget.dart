import 'package:flutter/material.dart';
import 'package:hajamli/constants.dart';

class ClientDrawer extends StatefulWidget {
  const ClientDrawer({super.key});

  @override
  State<ClientDrawer> createState() => _ClientDrawerState();
}

class _ClientDrawerState extends State<ClientDrawer> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        backgroundColor: primary_color,
        width: 290,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(45),
            topRight: Radius.circular(45),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Image(
              image: AssetImage("lib/assets/3.png"),
              width: 200,
              height: 100,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            const Divider(thickness: 2, color: secondary_color),
            const SizedBox(height: 20),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.person_2_rounded, color: secondary_color, size: 30),
                  onPressed: () {},
                ),
                const SizedBox(width: 5),
                const Text("Profile", style: TextStyle(fontSize: 20, color: bg_color)),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.punch_clock_rounded, color: secondary_color, size: 30),
                  onPressed: () {},
                ),
                const SizedBox(width: 5),
                const Text("History", style: TextStyle(fontSize: 20, color: bg_color)),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.language_rounded, color: secondary_color, size: 30),
                  onPressed: () {},
                ),
                const SizedBox(width: 5),
                const Text("Language", style: TextStyle(fontSize: 20, color: bg_color)),
              ],
            ),
            const SizedBox(height: 160),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: secondary_color,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
              child: const Text("Logout", style: TextStyle(color: bg_color)),
            ),
            const SizedBox(height: 20),
            const Divider(thickness: 2, color: secondary_color),
            const SizedBox(height: 20),
            const Row(
              children: [
                SizedBox(width: 10),
                Text("About Us", style: TextStyle(color: secondary_color, fontSize: 15, fontWeight: FontWeight.bold)),
              ],
            ),
            const Row(
              children: [
                SizedBox(width: 10),
                Text("Contact :", style: TextStyle(color: secondary_color, fontSize: 15, fontWeight: FontWeight.bold)),
              ],
            ),
            const Row(
              children: [
                SizedBox(width: 10),
                Text("jfhizfifz@gmail.com", style: TextStyle(color: secondary_color, fontSize: 15, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),


    );
  }
}
