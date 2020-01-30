import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:youtube_clone/models/video.dart';

class VideoRepository {
  getVideos() async {
    String rawVideos =
        await rootBundle.loadString('lib/assets/json/videos.json');

    List decodedVideos = json.decode(rawVideos);
    decodedVideos.map((video) => Video.fromJson(video)).toList();
  }
}
