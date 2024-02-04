import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar(
      {super.key, required this.onItemTapped, required this.selectedIndex});
  final Function(int) onItemTapped;
  final int selectedIndex;

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 28,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        widget.onItemTapped(value);
      },
      currentIndex: widget.selectedIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.question_answer_outlined),
          activeIcon: Icon(Icons.question_answer),
          label: 'Questions',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.quiz_outlined),
          activeIcon: Icon(Icons.quiz),
          label: 'Quiz',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.my_library_books_outlined),
          activeIcon: Icon(Icons.my_library_books),
          label: 'Results',
        ),
      ],
    );
  }
}
