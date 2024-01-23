import 'package:flutter/material.dart';
import 'package:how_to_dywan/categories/sub/templates/components/on_tap_dialog.dart';

class TalentList extends StatelessWidget {
  const TalentList({super.key, required this.data, required this.source});

  final List data;
  final String source;

  @override
  Widget build(BuildContext context) {
    final silvergridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
      crossAxisSpacing:
          MediaQuery.of(context).orientation == Orientation.landscape
              ? MediaQuery.of(context).size.width * 0.09
              : MediaQuery.of(context).size.width * 0.08,
      mainAxisSpacing:
          MediaQuery.of(context).orientation == Orientation.landscape
              ? MediaQuery.of(context).size.width * 0.09
              : MediaQuery.of(context).size.width * 0.08,
    );
    return PageView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        var mainIndex = index;
        return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/$source/${mainIndex == 0 ? 'affi' : mainIndex == 1 ? 'demo' : 'destro'}/background.jpg'),
                    fit: BoxFit.cover)),
            child: GridView.builder(
              padding:
                  MediaQuery.of(context).orientation == Orientation.landscape
                      ? const EdgeInsets.symmetric(vertical: 40, horizontal: 60)
                      : const EdgeInsets.all(20),
              itemCount: 44,
              gridDelegate: silvergridDelegate,
              itemBuilder: (context, index) {
                return data[mainIndex]
                        .where((element) => element['pos'] == index)
                        .isNotEmpty
                    ? Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border:
                                Border.all(color: Colors.black87, width: 3)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(3),
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                barrierColor: Colors.black.withOpacity(0.8),
                                context: context,
                                builder: (_) {
                                  return OnTapDialog(
                                      data: data[mainIndex],
                                      firstIndex: data[mainIndex]
                                          .firstWhere((element) =>
                                              element['pos'] == index)['index']
                                          .toInt(),
                                      source:
                                          '$source/${mainIndex == 0 ? 'affi' : mainIndex == 1 ? 'demo' : 'destro'}');
                                },
                              );
                            },
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                data[mainIndex].firstWhere((element) =>
                                            element['pos'] == index)['count'] >
                                        0
                                    ? Image.asset(
                                        'assets/images/$source/${mainIndex == 0 ? 'affi' : mainIndex == 1 ? 'demo' : 'destro'}/${data[mainIndex].firstWhere((element) => element['pos'] == index)['img']}',
                                        fit: BoxFit.cover,
                                      )
                                    : Image.asset(
                                        'assets/images/$source/${mainIndex == 0 ? 'affi' : mainIndex == 1 ? 'demo' : 'destro'}/${data[mainIndex].firstWhere((element) => element['pos'] == index)['img']}',
                                        fit: BoxFit.cover,
                                        color: Colors.grey,
                                        colorBlendMode: BlendMode.saturation,
                                      ),
                                if (data[mainIndex].firstWhere((element) =>
                                        element['pos'] == index)['count'] !=
                                    0)
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(3),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 3),
                                        color: Colors.black,
                                        child: Text(
                                          '${data[mainIndex].firstWhere((element) => element['pos'] == index)['count'].toString()}/${data[mainIndex].firstWhere((element) => element['pos'] == index)['maxCount'].toString()}',
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Container(
                        color: Colors.transparent,
                      );
              },
            ));
      },
    );
  }
}
