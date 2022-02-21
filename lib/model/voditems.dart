class VODItems {
  String? title;
  String? logo;
  String? desc;
  String? feedUrl;
  String? relatedItems;
  String? time;
  String? date;
  String? type;
  String? chaineName;
  String? chaineLogo;
  String? videoUrl;

  VODItems({
      this.title, 
      this.logo, 
      this.desc, 
      this.feedUrl, 
      this.relatedItems, 
      this.time, 
      this.date, 
      this.type, 
      this.chaineName, 
      this.chaineLogo, 
      this.videoUrl});

  VODItems.fromJson(dynamic json) {
    title = json["title"];
    logo = json["logo"];
    desc = json["desc"];
    feedUrl = json["feed_url"];
    relatedItems = json["relatedItems"];
    time = json["time"];
    date = json["date"];
    type = json["type"];
    chaineName = json["chaine_name"];
    chaineLogo = json["chaine_logo"];
    videoUrl = json["video_url"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["title"] = title;
    map["logo"] = logo;
    map["desc"] = desc;
    map["feed_url"] = feedUrl;
    map["relatedItems"] = relatedItems;
    map["time"] = time;
    map["date"] = date;
    map["type"] = type;
    map["chaine_name"] = chaineName;
    map["chaine_logo"] = chaineLogo;
    map["video_url"] = videoUrl;
    return map;
  }

}