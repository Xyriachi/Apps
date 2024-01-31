import 'package:flutter/material.dart';
import 'package:dywanowy_quiz/app_body.dart';
import 'package:dywanowy_quiz/navigation/bottom_bar.dart';
import 'package:dywanowy_quiz/navigation/top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopBar(title: 'Dywanowy Quiz'),
      bottomNavigationBar: BottomBar(),
      body: AppBody(),
    );
  }
}
