import 'package:flutter/material.dart';
import 'package:dywanowy_quiz/app_body.dart';
import 'package:dywanowy_quiz/navigation/bottom_bar.dart';
import 'package:dywanowy_quiz/navigation/top_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(title: 'Dywanowy Quiz', onItemTapped: _onItemTapped),
      bottomNavigationBar:
          BottomBar(onItemTapped: _onItemTapped, selectedIndex: _selectedIndex),
      body: AppBody(selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
