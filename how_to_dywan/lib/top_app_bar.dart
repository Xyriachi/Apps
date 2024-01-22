import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_dywan/categories/sub/data/popup.dart';
import 'package:how_to_dywan/categories/sub/templates/components/on_tap_dialog.dart';
import 'package:how_to_dywan/state/selected_screen_cubit.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    List popupData = Popup().getPopupList();
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 28, 28, 34),
      surfaceTintColor: const Color.fromARGB(255, 28, 28, 34),
      title: BlocBuilder<SelectedScreenCubit, SelectedScreenState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              context.read<SelectedScreenCubit>().selectAll(['basic', 'none']);
            },
            child: const Text('How to Dywan?'),
          );
        },
      ),
      actions: [
        PopupMenuButton(itemBuilder: (BuildContext context) {
          return [
            for (var i = 0; i < popupData.length; i++)
              PopupMenuItem(
                onTap: () {
                  Future.delayed(
                      const Duration(),
                      () => showDialog(
                            barrierColor: Colors.black.withOpacity(0.6),
                            context: context,
                            builder: (_) {
                              return OnTapDialog(
                                data: popupData,
                                firstIndex: i,
                                source: '',
                              );
                            },
                          ));
                },
                child: Text(popupData[i]['name']),
              ),
          ];
          // const [
          //   PopupMenuItem(child: Text('TODO')),
          //   PopupMenuItem(child: Text('TODO')),
          //   PopupMenuItem(child: Text('TODO')),
          // ];
        })
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
