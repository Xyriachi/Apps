import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool isScrolled) {
            return [
              //TODO change color of appbar when visible
              SliverAppBar(
                title: const Text('How to Dywan?'),
                actions: [
                  PopupMenuButton(itemBuilder: (BuildContext context) {
                    return const [
                      PopupMenuItem(child: Text('TODO')),
                      PopupMenuItem(child: Text('TODO')),
                      PopupMenuItem(child: Text('TODO')),
                    ];
                  })
                ],
                floating: true,
                snap: true,
              )
            ];
          },
          body: const Text('Hello!'),
        ),
        bottomNavigationBar: NavigationBar(
            onDestinationSelected: (value) => {print(value)},
            destinations: const [
              //TODO bloc state for bottom navigation bar
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
            ]),
      ),
    );
  }
}
