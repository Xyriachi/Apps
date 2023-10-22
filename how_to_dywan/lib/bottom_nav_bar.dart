import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_dywan/navigation/destinations.dart';
import 'package:how_to_dywan/state/bottom_nav_cubit.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, state) {
        return NavigationBar(
            onDestinationSelected: (value) => {
                  context.read<BottomNavCubit>().select(value),
                },
            selectedIndex: state,
            destinations: Destinations().getNavDestinations(state));
      },
    );
  }
}
