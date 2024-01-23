import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoListTemplate extends StatelessWidget {
  const VideoListTemplate({super.key, required this.data});
  final List data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).orientation == Orientation.landscape
              ? 9
              : 5,
          bottom: 2,
          left: MediaQuery.of(context).orientation == Orientation.landscape
              ? 8
              : 4,
          right: MediaQuery.of(context).orientation == Orientation.landscape
              ? 8
              : 4),
      child: ListView(
        padding: const EdgeInsets.only(top: 0),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          data == []
              ? const Text('Ładowanie...')
              : ListView.builder(
                  padding: const EdgeInsets.only(top: 0),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 2),
                      child: GestureDetector(
                        onTap: () async {
                          final String videoUrl =
                              "https://www.youtube.com/watch?v=${data[index]['id']}";
                          if (await canLaunchUrl(Uri.parse(videoUrl))) {
                            await launchUrl(Uri.parse(videoUrl));
                          } else {
                            throw 'Could not launch $videoUrl';
                          }
                        },
                        child: Card(
                          margin: const EdgeInsets.symmetric(vertical: 3),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 4),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image(
                                        image: NetworkImage(data[index]['img']),
                                        // height: 360,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 8, left: 4),
                                    child: SizedBox(
                                      height: 100,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(data[index]['title'],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  softWrap: false,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleMedium),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text(data[index]['desc'],
                                                // overflow: TextOverflow.ellipsis,
                                                softWrap: true,
                                                maxLines: 2,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
        ],
      ),
    );
  }
} //TODO make it looking better

