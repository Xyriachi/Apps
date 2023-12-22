import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_dywan/categories/sub/basic_sub.dart';
import 'package:how_to_dywan/categories/sub/addons_sub.dart';
import 'package:how_to_dywan/categories/sub/advanced_sub.dart';
import 'package:how_to_dywan/categories/sub/tactics_sub.dart';
import 'package:how_to_dywan/categories/sub_cat_template.dart';
import 'package:how_to_dywan/state/selected_screen_cubit.dart';

class NavigationLogic extends StatelessWidget {
  const NavigationLogic({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedScreenCubit, SelectedScreenState>(
      builder: (context, state) {
        return SizedBox(
            child: state.selectedScreen.last != 'none'
                ? state.selectedScreen.first == 'basic'
                    ? const BasicSub()
                    : state.selectedScreen.first == 'advanced'
                        ? const AdvancedSub()
                        : state.selectedScreen.first == 'tactics'
                            ? const TacticsSub()
                            : const AddonsSub()
                : const SubCategoriesTemplate());
      },
    );
  }
}
