class APIItems {
  String? title;
  String? desc;
  String? sdimage;
  String? logo;
  String? logoUrl;
  String? sdLogo;
  String? type;
  String? feedUrl;
  String? alauneFeed;
  String? vodFeed;
  String? streamUrl;
  String? emissions;
  bool? isSelected=false;

  APIItems(
      this.title, 
      this.desc, 
      this.sdimage,
      this.logo,
      this.logoUrl,
      this.sdLogo,
      this.type,
      this.feedUrl, 
      this.alauneFeed,
      this.vodFeed,
      this.streamUrl,
      this.emissions,
      this.isSelected);

  APIItems.fromJson(dynamic json) {
    title = json["title"];
    desc = json["desc"];
    sdimage = json["sdimage"];
    logo = json["logo"];
    logoUrl = json["logo_url"];
    sdLogo = json["sd_logo"];
    type = json["type"];
    feedUrl = json["feed_url"];
    alauneFeed = json["alaune_feed"];
    vodFeed = json["vod_feed"];
    streamUrl = json["stream_url"];
    emissions = json["emissions"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["title"] = title;
    map["desc"] = desc;
    map["sdimage"] = sdimage;
    map["logo"] = logo;
    map["logo_url"] = logoUrl;
    map["sd_logo"] = sdLogo;
    map["type"] = type;
    map["feed_url"] = feedUrl;
    map["alaune_feed"] = alauneFeed;
    map["vod_feed"] = vodFeed;
    map["stream_url"] = streamUrl;
    map["emissions"] = emissions;
    return map;
  }

}