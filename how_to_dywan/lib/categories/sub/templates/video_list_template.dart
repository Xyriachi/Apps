import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoListTemplate extends StatelessWidget {
  const VideoListTemplate({super.key, required this.data});
  final List data;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        data == []
            ? const Text('Ładowanie...')
            : ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
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
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AspectRatio(
                            aspectRatio: 16 / 10,
                            child: Image(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(data[index]['img']),
                              height: 360,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Align(
                            alignment: Alignment.center,
                            child: Text(data[index]['title'],
                                softWrap: true,
                                style: Theme.of(context).textTheme.titleMedium),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ],
    );
  }
} //TODO make it looking better

