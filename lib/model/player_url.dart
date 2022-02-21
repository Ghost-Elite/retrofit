class PlayerUrl {
  String? directUrl;
  String? videoUrl;

  PlayerUrl({
      this.directUrl,this.videoUrl});

  PlayerUrl.fromJson(dynamic json) {
    directUrl = json["direct_url"];
    videoUrl = json["video_url"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["direct_url"] = directUrl;
    map["video_url"] = videoUrl;
    return map;
  }

}