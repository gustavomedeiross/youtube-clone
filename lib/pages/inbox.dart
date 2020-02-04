import 'package:flutter/material.dart';
import 'package:youtube_clone/repositories/notification.dart';
import 'package:youtube_clone/models/notification.dart' as NotificationModel;
import 'package:youtube_clone/widgets/notification_list_tile.dart';

class Inbox extends StatelessWidget {
  final NotificationRepository _notificationRepository =
      NotificationRepository();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<NotificationModel.Notification>>(
          future: _notificationRepository.getNotifications(),
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
                return NotificationListTile(notification: snapshot.data[index]);
              },
            );
          }),
    );
  }
}
