import 'package:flutter/material.dart';

class Destinations {
  List<Widget> home = const [
    NavigationDestination(
      icon: Icon(Icons.library_books_outlined),
      selectedIcon: Icon(Icons.library_books),
      label: 'Podstawy',
    ),
    NavigationDestination(
      icon: Icon(Icons.school_outlined),
      selectedIcon: Icon(Icons.school),
      label: 'Zaawansowane',
    ),
    NavigationDestination(
      icon: Icon(Icons.menu_book_rounded),
      label: 'Taktyki',
    ),
    NavigationDestination(
      icon: Icon(Icons.video_collection_outlined),
      selectedIcon: Icon(Icons.video_collection_rounded),
      label: 'Filmy',
    ),
  ];
  getNavDestinations() {
    return home;
  }
}
