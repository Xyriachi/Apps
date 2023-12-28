import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_dywan/categories/sub/data/consumables.dart';
import 'package:how_to_dywan/categories/sub/data/opener.dart';
import 'package:how_to_dywan/categories/sub/data/spells.dart';
import 'package:how_to_dywan/categories/sub/templates/icon_list.dart';
import 'package:how_to_dywan/categories/sub/templates/icon_nested_list.dart';
import 'package:how_to_dywan/state/selected_screen_cubit.dart';
import 'package:how_to_dywan/categories/sub/data/rotation.dart';

class AdvancedSub extends StatelessWidget {
  const AdvancedSub({super.key});

  @override
  Widget build(BuildContext context) {
    List advancedData = [
      {
        'source': 'spells',
        'data': Spells().getSpellList(),
        'type': 'iconList',
      },
      {
        'source': 'rotation',
        'data': Rotation().getRotationList(),
        'type': 'iconList',
      },
      {
        'source': 'opener',
        'data': Opener().getOpenerList(),
        'type': 'iconList',
      },
      {
        'source': 'consumables',
        'data': Consumables().getConsumablesList(),
        'type': 'iconList',
      },
    ];

    getSelectedData(state) {
      List selectedData = state == 'Lista Spelli'
          ? advancedData[0]['data']
          : state == 'Rotacja'
              ? advancedData[1]['data']
              : state == 'Opener'
                  ? advancedData[2]['data']
                  : state == 'Jedzenie i Mikstury'
                      ? advancedData[3]['data']
                      : advancedData[3]['data'];

      return selectedData;
    }

    getSelectedName(state) {
      String selectedName = state == 'Lista Spelli'
          ? advancedData[0]['source']
          : state == 'Rotacja'
              ? advancedData[1]['source']
              : state == 'Opener'
                  ? advancedData[2]['source']
                  : state == 'Jedzenie i Mikstury'
                      ? advancedData[3]['source']
                      : advancedData[3]['source'];

      return selectedName;
    }

    getSelectedType(state) {
      String selectedType = state == 'Lista Spelli'
          ? advancedData[0]['type']
          : state == 'Rotacja'
              ? advancedData[1]['type']
              : state == 'Opener'
                  ? advancedData[2]['type']
                  : state == 'Jedzenie i Mikstury'
                      ? advancedData[3]['type']
                      : advancedData[3]['type'];

      return selectedType;
    }

    return BlocBuilder<SelectedScreenCubit, SelectedScreenState>(
      builder: (context, state) {
        return getSelectedType(state.selectedScreen.last) == 'iconList'
            ? IconList(
                data: getSelectedData(state.selectedScreen.last),
                source: getSelectedName(state.selectedScreen.last),
              )
            : getSelectedType(state.selectedScreen.last) == 'iconNestedList'
                ? IconNestedList(
                    data: getSelectedData(state.selectedScreen.last),
                    source: getSelectedName(state.selectedScreen.last),
                  )
                : const Placeholder();
      },
    );
  }
}
