import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:youtube_clone/models/video.dart';
import 'package:youtube_clone/util/format_views.dart';

class VideoListItem extends StatelessWidget {
  final Video video;

  VideoListItem({@required this.video});

  Text _buildSubtitle({String channelName, int views, DateTime createdAt}) {
    final viewsFormatted = formatViews(views);
    final createdAtFormatted = timeago.format(createdAt);
    final subtitle =
        channelName + ' • ' + viewsFormatted + ' • ' + createdAtFormatted;

    return Text(subtitle);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Divider(
        height: 2,
        thickness: 2,
      ),
      Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.network(
                video.thumbnail,
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(2),
              ),
              child: Text('9:03'),
            ),
          )
        ],
      ),
      Container(
        padding: EdgeInsets.only(bottom: 15),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(video.channel.avatarUrl),
          ),
          title: Text(
            video.title,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: _buildSubtitle(
            channelName: video.channel.name,
            views: video.views,
            createdAt: video.createdAt,
          ),
          trailing: Icon(Icons.more_vert),
        ),
      ),
    ]);
  }
}
