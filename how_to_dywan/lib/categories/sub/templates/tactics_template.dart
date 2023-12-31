import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_dywan/categories/sub/templates/icon_list.dart';
import 'package:how_to_dywan/categories/sub/templates/icon_nested_list.dart';
import 'package:how_to_dywan/state/selected_difficulty_cubit.dart';

class TacticsTemplate extends StatelessWidget {
  const TacticsTemplate({super.key, required this.data, required this.source});

  final List data;
  final String source;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedDifficultyCubit, SelectedDifficultyState>(
      builder: (context, state) {
        return PageView.builder(
          itemCount: data.length,
          itemBuilder: (context, firstIndex) {
            List<Map> mechanicsData = [
              data[firstIndex]['data'][0],
            ];
            List<Map> tacticsData = [data[firstIndex]['data'][1]];
            return ListView(children: [
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<SelectedDifficultyCubit>()
                            .selectSecond('nm');
                      },
                      child: const Text('Normal')),
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<SelectedDifficultyCubit>()
                            .selectSecond('hc');
                      },
                      child: const Text('Heroic')),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<SelectedDifficultyCubit>()
                            .selectFirst('10');
                      },
                      child: const Text('10-osobowy')),
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<SelectedDifficultyCubit>()
                            .selectFirst('25');
                      },
                      child: const Text('25-osobowy')),
                ],
              ),
              Text(context
                  .watch<SelectedDifficultyCubit>()
                  .state
                  .selectedDifficulty
                  .toString()),
              IconNestedList(data: mechanicsData, source: source),
              IconList(data: tacticsData, source: source),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: tacticsData[0]['sub'].length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: tacticsData[0]['sub'][index]['type'] == 'header'
                        ? Text(tacticsData[0]['sub'][index]['text'])
                        : tacticsData[0]['sub'][index]['type'] == 'image'
                            ? InteractiveViewer(
                                minScale: 1.0,
                                maxScale: 4.0,
                                child: Image.asset(
                                    'assets/images/$source/${tacticsData[0]['sub'][index]['src']}'),
                              )
                            : tacticsData[0]['sub'][index]['type'] == 'string'
                                ? Text(tacticsData[0]['sub'][index]['text'])
                                : const SizedBox(),
                  );
                },
              )
            ]);
          },
        );
      },
    );
  }
//TODO tactics template
}
