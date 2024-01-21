import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_dywan/bottom_nav_bar.dart';
import 'package:how_to_dywan/navigation_logic.dart';
import 'package:how_to_dywan/state/selected_screen_cubit.dart';
import 'package:how_to_dywan/state/selected_difficulty_cubit.dart';
import 'package:how_to_dywan/state/youtube_api_data.dart';
import 'package:how_to_dywan/top_app_bar.dart';

void main() {
  runApp(const MainApp());
}
//TODO check races, spell list, rotation, opener and consumables
//TODO check if there is any other streamer in guild and add him to the video list
//TODO add About Me section with info about me, my guild and hardcore realm

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SelectedScreenCubit>(
          create: (context) => SelectedScreenCubit(),
        ),
        BlocProvider<SelectedDifficultyCubit>(
          create: (context) => SelectedDifficultyCubit(),
        ),
        BlocProvider<YoutubeApiDataCubit>(
          create: (context) => YoutubeApiDataCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: const ColorScheme.dark(),
            cardTheme: const CardTheme(
                color: Color.fromARGB(255, 28, 28, 34),
                surfaceTintColor: Color.fromARGB(255, 28, 28, 34)),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all<Color>(
                        Colors.white.withOpacity(0.1)),
                    surfaceTintColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 28, 28, 34)),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 28, 28, 34))))),
        home: Builder(
          builder: (context) {
            final stateA = context.watch<SelectedScreenCubit>().state;
            List backPressTime = [];
            return WillPopScope(
                onWillPop: () async {
                  backPressTime.add(DateTime.now());
                  if (backPressTime.length < 2) {
                    if (stateA.selectedScreen[0] == 'basic') {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        duration: Duration(seconds: 2),
                        backgroundColor: Color.fromARGB(255, 28, 28, 34),
                        content: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Naciśnij ponownie aby wyjść.',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ));
                    } else {
                      if (stateA.selectedScreen[1] == 'none') {
                        context
                            .read<SelectedScreenCubit>()
                            .selectAll(['basic', 'none']);
                      } else {
                        context
                            .read<SelectedScreenCubit>()
                            .selectAll([stateA.selectedScreen[0], 'none']);
                      }
                    }

                    return false;
                  } else if (backPressTime.length == 2) {
                    if (backPressTime[1]
                            .difference(backPressTime[0])
                            .inSeconds <
                        2) {
                      return true;
                    } else {
                      if (stateA.selectedScreen[0] == 'basic') {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          duration: Duration(seconds: 2),
                          backgroundColor: Color.fromARGB(255, 28, 28, 34),
                          content: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Naciśnij ponownie aby wyjść.',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ));
                      } else {
                        if (stateA.selectedScreen[1] == 'none') {
                          context
                              .read<SelectedScreenCubit>()
                              .selectAll(['basic', 'none']);
                        } else {
                          context
                              .read<SelectedScreenCubit>()
                              .selectAll([stateA.selectedScreen[0], 'none']);
                        }
                      }

                      backPressTime.removeAt(0);
                      return false;
                    }
                  }

                  return false;
                },
                child: const Scaffold(
                  appBar: TopAppBar(),
                  body: NavigationLogic(),
                  bottomNavigationBar: BottomNavBar(),
                ));
          },
        ),
      ),
    );
  }
}
