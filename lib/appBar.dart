import 'package:flutter/material.dart';
import 'package:hajamli/constants.dart';

class HajamliAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HajamliAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Image(
        image: AssetImage("lib/assets/3.png"),
        height: 100,
      ),
      centerTitle: true,
      backgroundColor: bg_color,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const ImageIcon(
              AssetImage("lib/assets/menu.png"),
              size: 25,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
