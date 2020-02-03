import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:youtube_clone/models/notification.dart';

class NotificationRepository {
  Future<List<Notification>> getNotifications() async {
    String rawNotifications =
        await rootBundle.loadString('lib/assets/json/notifications.json');

    List decodedNotifications = json.decode(rawNotifications);
    return decodedNotifications
        .map((notification) => Notification.fromJson(notification))
        .toList();
  }
}
