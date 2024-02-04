import 'package:dywanowy_quiz/pages/home.dart';
import 'package:dywanowy_quiz/pages/questions.dart';
import 'package:dywanowy_quiz/pages/quiz.dart';
import 'package:dywanowy_quiz/pages/results.dart';
import 'package:flutter/material.dart';

class AppBody extends StatelessWidget {
  const AppBody(
      {super.key, required this.selectedIndex, required this.onItemTapped});
  final int selectedIndex;
  final Function(int) onItemTapped;

  @override
  Widget build(BuildContext context) {
    return selectedIndex == 0
        ? Home(onItemTapped: onItemTapped)
        : selectedIndex == 1
            ? const Questions()
            : selectedIndex == 2
                ? const Quiz()
                : const Results();
  }
}
