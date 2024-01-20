import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_to_dywan/categories/sub/templates/video_list_template.dart';
import 'package:how_to_dywan/state/selected_screen_cubit.dart';
import 'package:how_to_dywan/state/youtube_api_data.dart';
import 'package:http/http.dart' as http;

class VideoSub extends StatelessWidget {
  const VideoSub({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final stateA = context.watch<SelectedScreenCubit>().state;
        final stateB = context.watch<YoutubeApiDataCubit>();

        int dataIndex = stateA.selectedScreen[1] == 'Han' ? 0 : 1;

        List videoDataList = [];

        Future<void> fetchVideos() async {
          List<String> channelIds = [
            'UCT7t9h2EKeDu62sa1OwY1aQ',
            'UCk3EsBFj4p5oAknxswX2tsg'
          ];
          const String apiKey = 'AIzaSyCRGWgZVu7gfSGygegGzS_RP0NyxDlOF9M';
          const maxResults = 12;
          getUrl(channelId) {
            String url =
                'https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=$channelId&type=video&eventType=completed&order=date&maxResults=$maxResults&key=$apiKey';
            return url;
          }

          List response = [];
          if (stateB.state.youtubeApiData.isEmpty) {
            http.Response newResponse;
            for (var channelId in channelIds) {
              newResponse = await http.get(Uri.parse(getUrl(channelId)));
              response.add(newResponse);
            }
            stateB.newData([response]);
          } else {
            response = stateB.state.youtubeApiData[0];
          }

          if (response[dataIndex].statusCode == 200) {
            var data = json.decode(response[dataIndex].body);
            var items = data['items'];

            for (var item in items) {
              Map tempMap = {
                'title': item['snippet']['title'].toString(),
                'desc': item['snippet']['description'].toString(),
                'id': item['id']['videoId'].toString(),
                'img': item['snippet']['thumbnails']['high']['url'].toString(),
              };
              videoDataList.add(tempMap);
            }
            print(videoDataList);
          } else {
            throw Exception('Nie udało się załadować filmów.');
          }
        }

        fetchVideos();

        return ListView(
          shrinkWrap: true,
          children: [
            VideoListTemplate(
              data: videoDataList,
            ),
          ],
        );
      },
    );
  }
}
