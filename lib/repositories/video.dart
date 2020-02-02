import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:youtube_clone/models/video.dart';

class VideoRepository {
  Future<List<Video>> getVideos() async {
    String rawVideos =
        await rootBundle.loadString('lib/assets/json/videos.json');

    List decodedVideos = json.decode(rawVideos);
    return decodedVideos.map((video) => Video.fromJson(video)).toList();
  }
}
