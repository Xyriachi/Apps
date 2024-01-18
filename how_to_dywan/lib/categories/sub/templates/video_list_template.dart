import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoListTemplate extends StatelessWidget {
  const VideoListTemplate({super.key, required this.data});
  final data;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        data == []
            ? const Text('Ładowanie...')
            : ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        YoutubePlayer(
                          controller: YoutubePlayerController(
                            initialVideoId: data[index]['id'],
                            flags: YoutubePlayerFlags(
                              autoPlay: false,
                              mute: false,
                            ),
                          ),
                          showVideoProgressIndicator: true,
                          onReady: () {
                            print('Player is ready.');
                          },
                        ),
                        SizedBox(height: 6),
                        Text(data[index]['title'],
                            style: Theme.of(context).textTheme.titleMedium),
                      ],
                    ),
                  );
                },
              ),
      ],
    );
  } //TODO make it looking better
}
