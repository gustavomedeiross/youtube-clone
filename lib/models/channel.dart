class Channel {
  final int id;
  final String name;
  final String avatarUrl;

  Channel({this.id, this.name, this.avatarUrl});

  factory Channel.fromJson(Map<String, dynamic> json) {
    return Channel(
        id: json['id'], name: json['name'], avatarUrl: json['avatar_url']);
  }

  Map<String, dynamic> toJson() {
    return {'id': this.id, 'name': this.name, 'avatar_url': this.avatarUrl};
  }
}
