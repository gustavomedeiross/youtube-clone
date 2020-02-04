import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:youtube_clone/models/notification.dart' as NotificationModel;

class NotificationListTile extends StatelessWidget {
  final NotificationModel.Notification notification;

  NotificationListTile({@required this.notification});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(notification.channel.avatarUrl),
      ),
      title: Text(notification.title),
      subtitle: Text(timeago.format(notification.createdAt)),
      trailing: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.177,
            height: MediaQuery.of(context).size.width * 0.1,
            child: FittedBox(
                fit: BoxFit.cover,
                child: Image.network(notification.thumbnail)),
          ),
          Icon(
            Icons.more_vert,
          )
        ],
      ),
    );
  }
}
