import 'package:flutter/material.dart';
import 'package:how_to_dywan/categories/sub/templates/icon_nested_list.dart';

class TacticsTemplate extends StatelessWidget {
  const TacticsTemplate({super.key, required this.data, required this.source});

  final List data;
  final String source;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: PageView.builder(
        itemCount: data.length,
        itemBuilder: (context, firstIndex) {
          List<Map> mechanicsData = [
            data[firstIndex]['data'][0],
          ];
          List<Map> tacticsData = [
            data[firstIndex]['data'][1],
          ];
          return IconNestedList(data: mechanicsData, source: source);
        },
      ),
    );
  }
//TODO tactics template
}
