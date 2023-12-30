import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_dywan/categories/sub/data/icc.dart';
import 'package:how_to_dywan/categories/sub/data/rs.dart';
import 'package:how_to_dywan/categories/sub/data/toc.dart';
import 'package:how_to_dywan/categories/sub/templates/tactics_template.dart';
import 'package:how_to_dywan/state/selected_screen_cubit.dart';

class TacticsSub extends StatelessWidget {
  const TacticsSub({super.key});

  @override
  Widget build(BuildContext context) {
    List selectedType = [
      10,
      'hc',
    ];

    List tacticsData = [
      {
        'source': 'icc',
        'data': ICC().getIccList(selectedType),
        'type': '',
      },
      {
        'source': 'rs',
        'data': RS().getRsList(),
        'type': '',
      },
      {
        'source': 'toc',
        'data': ToC().getTocList(),
        'type': '',
      },
    ];

    getSelectedData(state) {
      List selectedData = state == 'Icecrown Citadel'
          ? tacticsData[0]['data']
          : state == 'The Ruby Sanctum'
              ? tacticsData[1]['data']
              : state == 'Trial of the Crusader'
                  ? tacticsData[2]['data']
                  : tacticsData[2]['data'];

      return selectedData;
    }

    getSelectedName(state) {
      String selectedName = state == 'Icecrown Citadel'
          ? tacticsData[0]['source']
          : state == 'The Ruby Sanctum'
              ? tacticsData[1]['source']
              : state == 'Trial of the Crusader'
                  ? tacticsData[2]['source']
                  : tacticsData[2]['source'];

      return selectedName;
    }

    return BlocBuilder<SelectedScreenCubit, SelectedScreenState>(
      builder: (context, state) {
        return TacticsTemplate(
          data: getSelectedData(state.selectedScreen.last),
          source: getSelectedName(state.selectedScreen.last),
        );
      },
    );
  }
}
