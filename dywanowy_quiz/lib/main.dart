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
      theme: ThemeData(
          splashFactory: NoSplash.splashFactory,
          colorScheme: const ColorScheme.dark(),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 28, 28, 34),
            surfaceTintColor: Color.fromARGB(255, 28, 28, 34),
            elevation: 3,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: const Color.fromARGB(255, 28, 28, 34),
            elevation: 3,
            selectedItemColor: ThemeData.dark().unselectedWidgetColor,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
            minimumSize: MaterialStateProperty.resolveWith<Size>((states) {
              return Size(MediaQuery.of(context).size.width * 0.9, 50);
            }),
            backgroundColor: MaterialStateProperty.all(Colors.grey[900]),
            foregroundColor: MaterialStateProperty.all(Colors.white70),
          ))), //TODO switch to better color
      home: const HomePage(),
    );
  }
}
