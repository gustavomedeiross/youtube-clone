import 'package:flutter/material.dart';
import 'package:youtube_clone/models/video.dart';
import 'package:youtube_clone/repositories/video.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  VideoRepository _videoRepository = VideoRepository();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List>(
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

            return Text(snapshot.data.toString());

            // return ListView.builder(
            //   itemCount: snapshot.data.length,
            //   itemBuilder: (context, index) {
            //     return Column(children: <Widget>[
            //       Container(
            //         child: Text('hey'),
            //       ),
            //       ListTile(
            //         leading: CircleAvatar(
            //           backgroundImage:
            //               AssetImage(snapshot.data.channel.avatarUrl),
            //         ),
            //       ),
            //     ]);
            //   },
            // );
          }),
    );
  }
}
