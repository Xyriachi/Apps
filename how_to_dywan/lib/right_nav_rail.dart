import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_dywan/state/selected_screen_cubit.dart';

class RightNavRail extends StatelessWidget {
  const RightNavRail({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedScreenCubit, SelectedScreenState>(
      builder: (context, state) {
        double windowHeight = MediaQuery.of(context).size.height * 0.04;
        return NavigationRail(
          backgroundColor: const Color.fromARGB(255, 28, 28, 34),
          labelType: NavigationRailLabelType.none,
          groupAlignment: 0,
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
          destinations: [
            NavigationRailDestination(
                icon: const Icon(Icons.library_books_outlined),
                selectedIcon: const Icon(Icons.library_books),
                label: const Text('Podstawy'),
                padding: EdgeInsets.symmetric(
                  vertical: windowHeight,
                )),
            NavigationRailDestination(
              icon: const Icon(Icons.school_outlined),
              selectedIcon: const Icon(Icons.school),
              label: const Text('Zaawansowane'),
              padding: EdgeInsets.symmetric(vertical: windowHeight),
            ),
            NavigationRailDestination(
              icon: const Icon(Icons.menu_book_rounded),
              label: const Text('Taktyki'),
              padding: EdgeInsets.symmetric(vertical: windowHeight),
            ),
            NavigationRailDestination(
              icon: const Icon(Icons.video_collection_outlined),
              selectedIcon: const Icon(Icons.video_collection_rounded),
              label: const Text('Filmy'),
              padding: EdgeInsets.symmetric(vertical: windowHeight),
            ),
          ],
        );
      },
    );
  }
}
