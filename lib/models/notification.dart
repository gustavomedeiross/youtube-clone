import 'package:youtube_clone/models/channel.dart';

class Notification {
  final int id;
  final String title;
  final String thumbnail;
  final DateTime createdAt;
  final Channel channel;

  Notification(
      {this.id, this.title, this.channel, this.createdAt, this.thumbnail});

  factory Notification.fromJson(Map<String, dynamic> json) {
    return Notification(
        id: json['id'],
        title: json['title'],
        thumbnail: json['thumbnail'],
        createdAt: DateTime.parse(json['created_at']),
        channel: Channel.fromJson(json['channel']));
  }

  Map<String, dynamic> toJson() {
    return {
      'id': this.id,
      'title': this.title,
      'thumbnail': this.thumbnail,
      'channel': this.channel,
      'created_at': this.createdAt,
    };
  }
}
