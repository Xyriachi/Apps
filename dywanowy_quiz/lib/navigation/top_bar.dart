import 'package:dywanowy_quiz/pages/settings.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({super.key, required this.title, required this.onItemTapped});
  final Function(int) onItemTapped;

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: GestureDetector(
          onTap: () {
            onItemTapped(0);
          },
          child: Text(title)),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Settings()));
            },
            icon: const Icon(
              Icons.settings_outlined,
              size: 28,
            ))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
