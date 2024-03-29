import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_dywan/categories/sub/basic_sub.dart';
import 'package:how_to_dywan/categories/sub/video_sub.dart';
import 'package:how_to_dywan/categories/sub/advanced_sub.dart';
import 'package:how_to_dywan/categories/sub/tactics_sub.dart';
import 'package:how_to_dywan/categories/sub_cat_template.dart';
import 'package:how_to_dywan/right_nav_rail.dart';
import 'package:how_to_dywan/state/selected_screen_cubit.dart';

class NavigationLogic extends StatelessWidget {
  const NavigationLogic({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedScreenCubit, SelectedScreenState>(
      builder: (context, state) {
        return state.selectedScreen.last != 'none'
            ? state.selectedScreen.first == 'basic'
                ? MediaQuery.of(context).orientation == Orientation.landscape
                    ? const Row(
                        children: [
                          RightNavRail(),
                          Expanded(child: BasicSub()),
                        ],
                      )
                    : const BasicSub()
                : state.selectedScreen.first == 'advanced'
                    ? MediaQuery.of(context).orientation ==
                            Orientation.landscape
                        ? const Row(
                            children: [
                              RightNavRail(),
                              Expanded(child: AdvancedSub()),
                            ],
                          )
                        : const AdvancedSub()
                    : state.selectedScreen.first == 'tactics'
                        ? MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? const Row(
                                children: [
                                  RightNavRail(),
                                  Expanded(child: TacticsSub()),
                                ],
                              )
                            : const TacticsSub()
                        : MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? const Row(
                                children: [
                                  RightNavRail(),
                                  Expanded(child: VideoSub()),
                                ],
                              )
                            : const VideoSub()
            : MediaQuery.of(context).orientation == Orientation.landscape
                ? const Row(
                    children: [
                      RightNavRail(),
                      Expanded(child: SubCategoriesTemplate()),
                    ],
                  )
                : const SubCategoriesTemplate();
      },
    );
  }
}
