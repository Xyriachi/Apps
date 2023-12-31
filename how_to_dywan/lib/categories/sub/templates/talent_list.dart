import 'package:flutter/material.dart';

class TalentList extends StatelessWidget {
  const TalentList({super.key, required this.data, required this.source});
  final silvergridDelegate = const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 4,
    crossAxisSpacing: 30,
    mainAxisSpacing: 30,
  );

  final List data;
  final String source;

  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsets.all(20),
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
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              data[mainIndex].firstWhere((element) =>
                                          element['pos'] == index)['count'] >
                                      0
                                  ? Image.asset(
                                      'assets/images/$source/${mainIndex == 0 ? 'affi' : mainIndex == 1 ? 'demo' : 'destro'}/${data[mainIndex].firstWhere((element) => element['pos'] == index)['icon']}.jpg',
                                      fit: BoxFit.cover,
                                    )
                                  : Image.asset(
                                      'assets/images/$source/${mainIndex == 0 ? 'affi' : mainIndex == 1 ? 'demo' : 'destro'}/${data[mainIndex].firstWhere((element) => element['pos'] == index)['icon']}.jpg',
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
                                        data[mainIndex]
                                            .firstWhere((element) =>
                                                element['pos'] ==
                                                index)['count']
                                            .toString(),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
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
//TODO add onClick description
//TODO rewrite talents description
//TODO add option to change talent count; when changing count, description should also change
}
