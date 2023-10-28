import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_dywan/categories/sub/data/gear.dart';
import 'package:how_to_dywan/categories/sub/data/gems.dart';
import 'package:how_to_dywan/categories/sub/data/glyphs.dart';
import 'package:how_to_dywan/categories/sub/templates/icon_list.dart';
import 'package:how_to_dywan/state/selected_screen_cubit.dart';

class BasicSub extends StatelessWidget {
  const BasicSub({super.key});

  @override
  Widget build(BuildContext context) {
    List basicData = [
      {
        'source': 'gear',
        'data': Gear().getGearList(),
      },
      {
        'source': 'glyphs',
        'data': Glyphs().getGlyphList(),
      },
      {
        'source': 'gems',
        'data': Gems().getGemData(),
      },
    ];

    getSelectedData(state) {
      List selectedData = state == 'Gear'
          ? basicData[0]['data']
          : state == 'Glyphy'
              ? basicData[1]['data']
              : basicData[2]['data'];

      return selectedData;
    }

    getSelectedName(state) {
      String selectedName = state == 'Gear'
          ? basicData[0]['source']
          : state == 'Glyphy'
              ? basicData[1]['source']
              : basicData[2]['source'];

      return selectedName;
    }

    return BlocBuilder<SelectedScreenCubit, SelectedScreenState>(
      builder: (context, state) {
        return IconList(
          data: getSelectedData(state.selectedScreen.last),
          source: getSelectedName(state.selectedScreen.last),
        );
      },
    );
  }
}
