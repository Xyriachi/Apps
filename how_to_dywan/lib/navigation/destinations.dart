import 'package:flutter/material.dart';

class Destinations {
  //TODO subcategories
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
      icon: Icon(Icons.extension_outlined),
      selectedIcon: Icon(Icons.extension),
      label: 'Addony',
    ),
  ];
  //TODO home subcategories at launch and after returning to homepage
  getNavDestinations() {
    return home;
  }
}
