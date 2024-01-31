import 'package:dywanowy_quiz/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        splashFactory: NoSplash.splashFactory,
        colorScheme: const ColorScheme.dark(),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 28, 28, 34),
          surfaceTintColor: Color.fromARGB(255, 28, 28, 34),
          elevation: 3,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromARGB(255, 28, 28, 34),
          elevation: 3,
        ),
      ),
      home: const HomePage(),
    );
  }
}
