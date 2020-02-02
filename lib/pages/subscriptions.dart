import 'package:flutter/material.dart';
import 'package:youtube_clone/models/video.dart';
import 'package:youtube_clone/repositories/channel.dart';
import 'package:youtube_clone/repositories/video.dart';
import 'package:youtube_clone/widgets/subscriptions_bar.dart';
import 'package:youtube_clone/widgets/video_list_item.dart';

class Subscriptions extends StatelessWidget {
  final VideoRepository _videoRepository = VideoRepository();
  final ChannelRepository _channelRepository = ChannelRepository();

  _getVideosAndSubscriptions() async {
    final videosAndSubscriptions = await Future.wait([
      this._videoRepository.getVideos(),
      this._channelRepository.getChannels(),
    ]);

    return {
      'videos': videosAndSubscriptions[0],
      'subscriptions': videosAndSubscriptions[1],
    };
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
          future: _getVideosAndSubscriptions(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }

            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            return ListView.builder(
              itemCount: snapshot.data['videos'].length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return SubscriptionsBar(
                      channels: snapshot.data['subscriptions']);
                }

                return VideoListItem(video: snapshot.data['videos'][index - 1]);
              },
            );
          }),
    );
  }
}
