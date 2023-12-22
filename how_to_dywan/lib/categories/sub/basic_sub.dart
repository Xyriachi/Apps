import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_dywan/categories/sub/data/gear.dart';
import 'package:how_to_dywan/categories/sub/data/gems.dart';
import 'package:how_to_dywan/categories/sub/data/glyphs.dart';
import 'package:how_to_dywan/categories/sub/data/talents.dart';
import 'package:how_to_dywan/categories/sub/templates/icon_list.dart';
import 'package:how_to_dywan/categories/sub/templates/talent_list.dart';
import 'package:how_to_dywan/state/selected_screen_cubit.dart';

class BasicSub extends StatelessWidget {
  const BasicSub({super.key});

  @override
  Widget build(BuildContext context) {
    List basicData = [
      {
        'source': 'gear',
        'data': Gear().getGearList(),
        'type': 'iconList',
      },
      {
        'source': 'talents',
        'data': Talents().getTalentList(),
        'type': 'talentList',
      },
      {
        'source': 'gems',
        'data': Gems().getGemData(),
        'type': 'iconList',
      },
      {
        'source': 'glyphs',
        'data': Glyphs().getGlyphList(),
        'type': 'iconList',
      },
    ];

    getSelectedData(state) {
      List selectedData = state == 'Gear'
          ? basicData[0]['data']
          : state == 'Talenty'
              ? basicData[1]['data']
              : state == 'Gemy'
                  ? basicData[2]['data']
                  : basicData[3]['data'];

      return selectedData;
    }

    getSelectedName(state) {
      String selectedName = state == 'Gear'
          ? basicData[0]['source']
          : state == 'Talenty'
              ? basicData[1]['source']
              : state == 'Gemy'
                  ? basicData[2]['source']
                  : basicData[3]['source'];

      return selectedName;
    }

    getSelectedType(state) {
      String selectedType = state == 'Gear'
          ? basicData[0]['type']
          : state == 'Talenty'
              ? basicData[1]['type']
              : state == 'Gemy'
                  ? basicData[2]['type']
                  : basicData[3]['type'];

      return selectedType;
    }

    return BlocBuilder<SelectedScreenCubit, SelectedScreenState>(
      builder: (context, state) {
        return getSelectedType(state.selectedScreen.last) == 'iconList'
            ? IconList(
                data: getSelectedData(state.selectedScreen.last),
                source: getSelectedName(state.selectedScreen.last),
              )
            : getSelectedType(state.selectedScreen.last) == 'talentList'
                ? TalentList(
                    data: getSelectedData(state.selectedScreen.last),
                    source: getSelectedName(state.selectedScreen.last),
                  )
                : const Placeholder();
      },
    );
  }
}
