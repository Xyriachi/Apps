import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_dywan/state/bottom_nav_cubit.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color.fromARGB(255, 28, 28, 34),
      title: BlocBuilder<BottomNavCubit, int>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              context.read<BottomNavCubit>().select(0);
            },
            child: Text('How to Dywan?'),
          );
        },
      ),
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
    );
  }
}
