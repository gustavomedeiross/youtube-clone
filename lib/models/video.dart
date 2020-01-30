import 'package:youtube_clone/models/channel.dart';

class Video {
  final int id;
  final String title;
  final String thumbnail;
  final int views;
  final DateTime createdAt;
  final Duration duration;
  final Channel channel;

  Video(
      {this.id,
      this.title,
      this.channel,
      this.views,
      this.createdAt,
      this.duration,
      this.thumbnail});

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
        id: json['id'],
        title: json['title'],
        thumbnail: json['thumbnail'],
        views: json['views'],
        createdAt: json['created_at'],
        duration: json['duration'],
        channel: Channel.fromJson(json['channel']));
  }

  Map<String, dynamic> toJson() {
    return {
      'id': this.id,
      'title': this.title,
      'thumbnail': this.thumbnail,
      'channel': this.channel,
      'views': this.views,
      'created_at': this.createdAt,
      'duration': this.duration,
    };
  }
}
