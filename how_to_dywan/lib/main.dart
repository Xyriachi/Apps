import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_dywan/bottom_nav_bar.dart';
import 'package:how_to_dywan/navigation_logic.dart';
import 'package:how_to_dywan/state/selected_screen_cubit.dart';
import 'package:how_to_dywan/state/selected_difficulty_cubit.dart';
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
        BlocProvider<SelectedScreenCubit>(
          create: (context) => SelectedScreenCubit(),
        ),BlocProvider<SelectedDifficultyCubit>(
          create: (context) => SelectedDifficultyCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: const ColorScheme.dark(),
          cardTheme: const CardTheme(color: Color.fromARGB(255, 28, 28, 34)),
        ),
        home: BlocBuilder<SelectedScreenCubit, SelectedScreenState>(
          builder: (context, state) {
            return WillPopScope(
              onWillPop: () async {
                context
                    .read<SelectedScreenCubit>()
                    .selectAll(['basic', 'none']);
                return false;
              },
              child: const Scaffold(
                appBar: TopAppBar(),
                body: NavigationLogic(),
                // NestedScrollView(
                //   floatHeaderSlivers: true,
                //   headerSliverBuilder: (BuildContext context, bool isScrolled) {
                //     return [
                //       const TopAppBar(),
                //     ];
                //   },
                //   body: const NavigationLogic(),
                // ),
                bottomNavigationBar: BottomNavBar(),
              ),
            );
          },
        ),
      ),
    );
  }
}
