class AppInfo {
  String? appPrivacy;
  String? appDescription;

  AppInfo({
      this.appPrivacy,this.appDescription});

  AppInfo.fromJson(dynamic json) {
    appPrivacy = json["app_privacy"];
    appDescription = json["app_description"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["app_privacy"] = appPrivacy;
    map["app_description"] = appDescription;
    return map;
  }

}