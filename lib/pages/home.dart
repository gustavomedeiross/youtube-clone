import 'package:flutter/material.dart';
import 'package:youtube_clone/models/video.dart';
import 'package:youtube_clone/repositories/video.dart';
import 'package:youtube_clone/widgets/video_list_item.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  VideoRepository _videoRepository = VideoRepository();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<Video>>(
          future: _videoRepository.getVideos(),
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
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return VideoListItem(video: snapshot.data[index]);
              },
            );
          }),
    );
  }
}
