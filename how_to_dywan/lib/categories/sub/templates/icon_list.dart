import 'package:flutter/material.dart';
import 'package:how_to_dywan/categories/sub/templates/components/on_tap_dialog.dart';

class IconList extends StatelessWidget {
  const IconList({super.key, required this.data, required this.source});
  final List data;
  final String source;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical: 6,
            horizontal:
                MediaQuery.of(context).orientation == Orientation.landscape
                    ? 4
                    : 0),
        child: Align(
          alignment: Alignment.topLeft,
          child: ListView.builder(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).orientation == Orientation.landscape
                    ? 4
                    : 0),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context, firstIndex) {
              return Padding(
                padding: const EdgeInsets.all(6.0),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      barrierColor: Colors.black.withOpacity(0.8),
                      context: context,
                      builder: (_) {
                        return OnTapDialog(
                            source: source, data: data, firstIndex: firstIndex);
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
                            borderRadius: BorderRadius.circular(8),
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
                          ? Text(
                              data[firstIndex]['shortDesc'],
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                            )
                          : const Text('')),
                ),
              );
            },
          ),
        ));
  }
}
