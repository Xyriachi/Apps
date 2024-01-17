import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_dywan/navigation/destinations.dart';
import 'package:how_to_dywan/state/selected_screen_cubit.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedScreenCubit, SelectedScreenState>(
      builder: (context, state) {
        return Container(
          decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: Color.fromARGB(30, 0, 0, 0), width: 4))),
          child: NavigationBar(
              surfaceTintColor: const Color.fromARGB(255, 28, 28, 34),
              backgroundColor: const Color.fromARGB(255, 28, 28, 34),
              onDestinationSelected: (value) => {
                    context.read<SelectedScreenCubit>().selectFirst(value == 0
                        ? 'basic'
                        : value == 1
                            ? 'advanced'
                            : value == 2
                                ? 'tactics'
                                : 'addons'),
                    context.read<SelectedScreenCubit>().selectSecond('none')
                  },
              selectedIndex: state.selectedScreen.first == 'basic'
                  ? 0
                  : state.selectedScreen.first == 'advanced'
                      ? 1
                      : state.selectedScreen.first == 'tactics'
                          ? 2
                          : 3,
              destinations: Destinations().getNavDestinations()),
        );
      },
    );
  }
}
