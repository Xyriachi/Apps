import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_dywan/bottom_nav_bar.dart';
import 'package:how_to_dywan/navigation_logic.dart';
import 'package:how_to_dywan/state/bottom_nav_cubit.dart';
import 'package:how_to_dywan/top_app_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavCubit>(
          create: (context) => BottomNavCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
            useMaterial3: true, colorScheme: const ColorScheme.dark()),
        home: Scaffold(
          body: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (BuildContext context, bool isScrolled) {
              return [
                TopAppBar(),
              ];
            },
            body: NavigationLogic(),
          ),
          bottomNavigationBar: BottomNavBar(),
        ),
      ),
    );
  }
}
