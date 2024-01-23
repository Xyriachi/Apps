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
        List difficulty =
            context.watch<SelectedDifficultyCubit>().state.selectedDifficulty;
        return PageView.builder(
          itemCount: data.length,
          itemBuilder: (context, firstIndex) {
            List<Map> mechanicsData = [
              data[firstIndex]['data'][0],
            ];
            List<Map> tacticsData = [data[firstIndex]['data'][1]];
            return ListView(shrinkWrap: true, children: [
              Padding(
                padding: EdgeInsets.only(
                    bottom: 15,
                    top: MediaQuery.of(context).orientation ==
                            Orientation.landscape
                        ? 5
                        : 15),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '${data[firstIndex]['name']} ${difficulty[0]} ${difficulty[1] == 'hc' ? 'Heroic' : 'Normal'}',
                    style: Theme.of(context).textTheme.titleLarge,
                    softWrap: true,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<SelectedDifficultyCubit>()
                            .selectSecond('nm');
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text('Normal'),
                      )),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<SelectedDifficultyCubit>()
                            .selectSecond('hc');
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text('Heroic'),
                      )),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<SelectedDifficultyCubit>()
                            .selectFirst('10');
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text('10-osobowy'),
                      )),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<SelectedDifficultyCubit>()
                            .selectFirst('25');
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text('25-osobowy'),
                      )),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
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
                        ? Align(
                            alignment: Alignment.center,
                            child: Text(
                              tacticsData[0]['sub'][index]['text'],
                              style: Theme.of(context).textTheme.titleLarge,
                              softWrap: true,
                            ),
                          )
                        : tacticsData[0]['sub'][index]['type'] == 'image'
                            ? GestureDetector(
                                onTap: () {
                                  showDialog(
                                    barrierColor: Colors.black.withOpacity(0.8),
                                    context: context,
                                    builder: (_) {
                                      return Dialog(
                                          insetPadding:
                                              const EdgeInsets.all(12),
                                          backgroundColor: const Color.fromARGB(
                                              255, 28, 28, 34),
                                          surfaceTintColor:
                                              const Color.fromARGB(
                                                  255, 28, 28, 34),
                                          child: InteractiveViewer(
                                            minScale: 1,
                                            maxScale: 4,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Image.asset(
                                                  'assets/images/$source/${tacticsData[0]['sub'][index]['src']}'),
                                            ),
                                          ));
                                    },
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical:
                                          MediaQuery.of(context).orientation ==
                                                  Orientation.landscape
                                              ? 6
                                              : 4,
                                      horizontal:
                                          MediaQuery.of(context).orientation ==
                                                  Orientation.landscape
                                              ? 20
                                              : 8),
                                  child: Image.asset(
                                      'assets/images/$source/${tacticsData[0]['sub'][index]['src']}'),
                                ),
                              )
                            : tacticsData[0]['sub'][index]['type'] == 'string'
                                ? Text(
                                    tacticsData[0]['sub'][index]['text'],
                                    softWrap: true,
                                  )
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
}
