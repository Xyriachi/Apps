import 'package:flutter/material.dart';

class OnTapDialog extends StatelessWidget {
  const OnTapDialog(
      {super.key,
      required this.data,
      required this.firstIndex,
      required this.source});
  final List data;
  final int firstIndex;
  final String source;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                      border: Border.all(color: Colors.black87, width: 2)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
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
                        style: Theme.of(context).textTheme.titleMedium,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: data[firstIndex]['desc'] is String
                        ? Text(
                            data[firstIndex]['desc'],
                            softWrap: true,
                          )
                        : Column(
                            children: [
                              ListView.separated(
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return const SizedBox(height: 10);
                                },
                                itemCount: data[firstIndex]['desc'].length,
                                itemBuilder: (context, secondIndex) {
                                  return Text(
                                      data[firstIndex]['desc'][secondIndex]);
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
  }
}
