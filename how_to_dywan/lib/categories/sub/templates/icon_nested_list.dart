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
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, index) {
            var mainIndex = index;
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
                                            'assets/images/$source/${data[index]['img']}',
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
                                              data[index]['name'],
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
                                            data[index]['desc'],
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
                                'assets/images/$source/${data[index]['img']}',
                                width: 48),
                          ),
                        ),
                        title: Text(
                          data[index]['name'],
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: data[index]['shortDesc'] != null
                            ? Text(data[index]['shortDesc'], softWrap: true)
                            : const Text('')),
                  ),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data[mainIndex]['sub'].length,
                  itemBuilder: (context, index) {
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
                                              'assets/images/$source/${data[mainIndex]['sub'][index]['subImg']}',
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
                                                data[mainIndex]['sub'][index]
                                                    ['subName'],
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
                                              data[mainIndex]['sub'][index]
                                                  ['subDesc'],
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
                                  'assets/images/$source/${data[mainIndex]['sub'][index]['subImg']}',
                                  width: 36),
                            ),
                          ),
                          title: Text(data[mainIndex]['sub'][index]['subName']),
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
