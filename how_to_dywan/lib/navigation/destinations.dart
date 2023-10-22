import 'package:flutter/material.dart';

class Destinations {
  //TODO subcategories
  List<Widget> home = const [
    NavigationDestination(
      icon: Icon(Icons.library_books_outlined),
      selectedIcon: Icon(Icons.library_books),
      label: 'Basic',
    ),
    NavigationDestination(
      icon: Icon(Icons.school_outlined),
      selectedIcon: Icon(Icons.school),
      label: 'Advanced',
    ),
    NavigationDestination(
      icon: Icon(Icons.menu_book_rounded),
      label: 'Tactics',
    ),
    NavigationDestination(
      icon: Icon(Icons.extension_outlined),
      selectedIcon: Icon(Icons.extension),
      label: 'Addons',
    ),
  ];
  List<Widget> basic = const [
    NavigationDestination(
      icon: Icon(Icons.library_books_outlined),
      selectedIcon: Icon(Icons.library_books),
      label: 'Basic1',
    ),
    NavigationDestination(
      icon: Icon(Icons.school_outlined),
      selectedIcon: Icon(Icons.school),
      label: 'Advanced1',
    ),
    NavigationDestination(
      icon: Icon(Icons.menu_book_rounded),
      label: 'Tactics1',
    ),
    NavigationDestination(
      icon: Icon(Icons.extension_outlined),
      selectedIcon: Icon(Icons.extension),
      label: 'Addons1',
    ),
  ];
  List<Widget> advanced = const [
    NavigationDestination(
      icon: Icon(Icons.library_books_outlined),
      selectedIcon: Icon(Icons.library_books),
      label: 'Basic2',
    ),
    NavigationDestination(
      icon: Icon(Icons.school_outlined),
      selectedIcon: Icon(Icons.school),
      label: 'Advanced2',
    ),
    NavigationDestination(
      icon: Icon(Icons.menu_book_rounded),
      label: 'Tactics2',
    ),
    NavigationDestination(
      icon: Icon(Icons.extension_outlined),
      selectedIcon: Icon(Icons.extension),
      label: 'Addons2',
    ),
  ];
  List<Widget> tactics = const [
    NavigationDestination(
      icon: Icon(Icons.library_books_outlined),
      selectedIcon: Icon(Icons.library_books),
      label: 'Basic3',
    ),
    NavigationDestination(
      icon: Icon(Icons.school_outlined),
      selectedIcon: Icon(Icons.school),
      label: 'Advanced3',
    ),
    NavigationDestination(
      icon: Icon(Icons.menu_book_rounded),
      label: 'Tactics3',
    ),
    NavigationDestination(
      icon: Icon(Icons.extension_outlined),
      selectedIcon: Icon(Icons.extension),
      label: 'Addons3',
    ),
  ];
  List<Widget> addons = const [
    NavigationDestination(
      icon: Icon(Icons.library_books_outlined),
      selectedIcon: Icon(Icons.library_books),
      label: 'Basic4',
    ),
    NavigationDestination(
      icon: Icon(Icons.school_outlined),
      selectedIcon: Icon(Icons.school),
      label: 'Advanced4',
    ),
    NavigationDestination(
      icon: Icon(Icons.menu_book_rounded),
      label: 'Tactics4',
    ),
    NavigationDestination(
      icon: Icon(Icons.extension_outlined),
      selectedIcon: Icon(Icons.extension),
      label: 'Addons4',
    ),
  ];
  //TODO home subcategories at launch and after returning to homepage
  getNavDestinations(value) {
    return value == 0
        ? basic
        : value == 1
            ? advanced
            : value == 2
                ? tactics
                : value == 3
                    ? addons
                    : home;
  }
}
