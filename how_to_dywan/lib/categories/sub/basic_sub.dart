import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_dywan/categories/sub/data/enchants.dart';
import 'package:how_to_dywan/categories/sub/data/gear.dart';
import 'package:how_to_dywan/categories/sub/data/gems.dart';
import 'package:how_to_dywan/categories/sub/data/glyphs.dart';
import 'package:how_to_dywan/categories/sub/data/professions.dart';
import 'package:how_to_dywan/categories/sub/data/races.dart';
import 'package:how_to_dywan/categories/sub/data/talents.dart';
import 'package:how_to_dywan/categories/sub/templates/icon_list.dart';
import 'package:how_to_dywan/categories/sub/templates/icon_nested_list.dart';
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
        'type': 'iconNestedList',
      },
      {
        'source': 'glyphs',
        'data': Glyphs().getGlyphList(),
        'type': 'iconList',
      },
      {
        'source': 'enchants',
        'data': Enchants().getEnchantData(),
        'type': 'iconNestedList',
      },
      {
        'source': 'professions',
        'data': Professions().getProffesionData(),
        'type': 'iconNestedList',
      },
      {
        'source': 'races',
        'data': Races().getRaceData(),
        'type': 'iconNestedList',
      },
    ];

    getSelectedData(state) {
      List selectedData = state == 'Gear'
          ? basicData[0]['data']
          : state == 'Talenty'
              ? basicData[1]['data']
              : state == 'Gemy'
                  ? basicData[2]['data']
                  : state == 'Glyphy'
                      ? basicData[3]['data']
                      : state == 'Enchanty'
                          ? basicData[4]['data']
                          : state == 'Profesje'
                              ? basicData[5]['data']
                              : state == 'Rasy'
                                  ? basicData[6]['data']
                                  : basicData[6]['data'];

      return selectedData;
    }

    getSelectedName(state) {
      String selectedName = state == 'Gear'
          ? basicData[0]['source']
          : state == 'Talenty'
              ? basicData[1]['source']
              : state == 'Gemy'
                  ? basicData[2]['source']
                  : state == 'Glyphy'
                      ? basicData[3]['source']
                      : state == 'Enchanty'
                          ? basicData[4]['source']
                          : state == 'Profesje'
                              ? basicData[5]['source']
                              : state == 'Rasy'
                                  ? basicData[6]['source']
                                  : basicData[6]['source'];

      return selectedName;
    }

    getSelectedType(state) {
      String selectedType = state == 'Gear'
          ? basicData[0]['type']
          : state == 'Talenty'
              ? basicData[1]['type']
              : state == 'Gemy'
                  ? basicData[2]['type']
                  : state == 'Glyphy'
                      ? basicData[3]['type']
                      : state == 'Enchanty'
                          ? basicData[4]['type']
                          : state == 'Profesje'
                              ? basicData[5]['type']
                              : state == 'Rasy'
                                  ? basicData[6]['type']
                                  : basicData[6]['type'];

      return selectedType;
    }

    return BlocBuilder<SelectedScreenCubit, SelectedScreenState>(
      builder: (context, state) {
        return getSelectedType(state.selectedScreen.last) == 'iconList'
            ? ListView(
                shrinkWrap: true,
                children: [
                  IconList(
                    data: getSelectedData(state.selectedScreen.last),
                    source: getSelectedName(state.selectedScreen.last),
                  )
                ],
              )
            : getSelectedType(state.selectedScreen.last) == 'iconNestedList'
                ? ListView(
                    shrinkWrap: true,
                    children: [
                      IconNestedList(
                        data: getSelectedData(state.selectedScreen.last),
                        source: getSelectedName(state.selectedScreen.last),
                      )
                    ],
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
