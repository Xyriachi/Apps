import 'package:flutter/material.dart';

class IconNestedList extends StatelessWidget {
  const IconNestedList({super.key, required this.data, required this.source});
  final List data;
  final String source;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, firstIndex) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) {
                          return Dialog(
                            insetPadding: const EdgeInsets.all(16),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            surfaceTintColor: Theme.of(context).cardTheme.color,
                            elevation: 2,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            border: Border.all(
                                                color: Colors.black87,
                                                width: 2)),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          child: Image.asset(
                                            'assets/images/$source/${data[firstIndex]['img']}',
                                            width: 48,
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              data[firstIndex]['name'],
                                              softWrap: true,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                            )),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            data[firstIndex]['desc'],
                                            softWrap: true,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 2),
                        minLeadingWidth: 32,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        tileColor: Theme.of(context).cardTheme.color,
                        leading: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border:
                                  Border.all(color: Colors.black87, width: 2)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(
                                'assets/images/$source/${data[firstIndex]['img']}',
                                width: 48),
                          ),
                        ),
                        title: Text(
                          data[firstIndex]['name'],
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: data[firstIndex]['shortDesc'] != null
                            ? Text(data[firstIndex]['shortDesc'],
                                softWrap: true)
                            : const Text('')),
                  ),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data[firstIndex]['sub'].length,
                  itemBuilder: (context, secondIndex) {
                    return GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) {
                            return Dialog(
                              insetPadding: const EdgeInsets.all(16),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              surfaceTintColor:
                                  Theme.of(context).cardTheme.color,
                              elevation: 2,
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              border: Border.all(
                                                  color: Colors.black87,
                                                  width: 2)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            child: Image.asset(
                                              'assets/images/$source/${data[firstIndex]['sub'][secondIndex]['subImg']}',
                                              width: 48,
                                            ),
                                          ),
                                        )),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                data[firstIndex]['sub']
                                                    [secondIndex]['subName'],
                                                softWrap: true,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium,
                                              )),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: data[firstIndex]['sub']
                                                        [secondIndex]['subDesc']
                                                    is String
                                                ? Text(
                                                    data[firstIndex]['sub']
                                                            [secondIndex]
                                                        ['subDesc'],
                                                    softWrap: true,
                                                  )
                                                : Column(
                                                    children: [
                                                      ListView.separated(
                                                        shrinkWrap: true,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return const SizedBox(
                                                              height: 10);
                                                        },
                                                        itemCount: data[firstIndex]
                                                                        ['sub'][
                                                                    secondIndex]
                                                                ['subDesc']
                                                            .length,
                                                        itemBuilder: (context,
                                                            thirdIndex) {
                                                          return Text(data[firstIndex]
                                                                          [
                                                                          'sub']
                                                                      [
                                                                      secondIndex]
                                                                  ['subDesc']
                                                              [thirdIndex]);
                                                        },
                                                      )
                                                    ],
                                                  ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                    color: Colors.black87, width: 2)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: Image.asset(
                                  'assets/images/$source/${data[firstIndex]['sub'][secondIndex]['subImg']}',
                                  width: 36),
                            ),
                          ),
                          title: Text(
                              data[firstIndex]['sub'][secondIndex]['subName']),
                        ),
                      ),
                    );
                  },
                )
              ],
            );
          },
        ));
  }
}
