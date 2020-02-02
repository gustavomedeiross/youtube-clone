import 'package:flutter/material.dart';
import 'package:youtube_clone/models/category.dart';
import 'package:youtube_clone/models/video.dart';
import 'package:youtube_clone/repositories/video.dart';
import 'package:youtube_clone/widgets/category_bar.dart';
import 'package:youtube_clone/widgets/video_list_item.dart';

class Trending extends StatelessWidget {
  final VideoRepository _videoRepository = VideoRepository();

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
              itemCount: snapshot.data.length + 1,
              itemBuilder: (BuildContext ctxt, int index) {
                if (index == 0) {
                  return CategoryBar();
                }

                return VideoListItem(video: snapshot.data[index - 1]);
              },
            );
          }),
    );
  }
}
