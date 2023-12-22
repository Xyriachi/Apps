import 'package:flutter/material.dart';

class IconList extends StatelessWidget {
  const IconList({super.key, required this.data, required this.source});
  final List data;
  final String source;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 6),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Padding(
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
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                            color: Colors.black87, width: 2)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
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
                                      //TODO if desc is not string, map it
                                      child: data[index]['desc'] is String
                                          ? Text(
                                              data[index]['name'],
                                              softWrap: true,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                            )
                                          : Column(
                                              children: [
                                                (data[index]['desc'])
                                                    .map((item) => {
                                                          Text(
                                                            item['subName'],
                                                            softWrap: true,
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .titleMedium,
                                                          ),
                                                        })
                                              ],
                                            ),
                                    ),
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
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                    minLeadingWidth: 32,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    tileColor: Theme.of(context).cardTheme.color,
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.black87, width: 2)),
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
                    subtitle: data[index]['descShort'] != null
                        ? Text(data[index]['descShort'], softWrap: true)
                        : const Text('')),
              ),
            );
          },
        ));
  }
}
