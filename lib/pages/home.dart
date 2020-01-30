import 'package:flutter/material.dart';
import 'package:youtube_clone/models/video.dart';
import 'package:youtube_clone/repositories/video.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  VideoRepository _videoRepository = VideoRepository();
  List<Video> videos;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
          future: _videoRepository.getVideos(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Text('ERROR!');
            }

            if (!snapshot.data) {
              return CircularProgressIndicator();
            }

            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Column(children: <Widget>[
                  Container(
                    child: Text('hey'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage(snapshot.data.channel.avatarUrl),
                    ),
                  ),
                ]);
              },
            );
          }),
    );
  }
}
