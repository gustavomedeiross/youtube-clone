import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:youtube_clone/models/channel.dart';

class ChannelRepository {
  Future<List<Channel>> getChannels() async {
    String rawChannels =
        await rootBundle.loadString('lib/assets/json/channels.json');

    List decodedChannels = json.decode(rawChannels);
    return decodedChannels.map((channel) => Channel.fromJson(channel)).toList();
  }
}
