class ListShowsByChannel {
  String? chaineName;
  String? chaineDesc;
  String? chaineLogo;
  String? listShows;

  ListShowsByChannel({
      this.chaineName, 
      this.chaineDesc, 
      this.chaineLogo, 
      this.listShows});

  ListShowsByChannel.fromJson(dynamic json) {
    chaineName = json["chaine_name"];
    chaineDesc = json["chaine_desc"];
    chaineLogo = json["chaine_logo"];
    listShows = json["list_shows"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["chaine_name"] = chaineName;
    map["chaine_desc"] = chaineDesc;
    map["chaine_logo"] = chaineLogo;
    map["list_shows"] = listShows;
    return map;
  }

}