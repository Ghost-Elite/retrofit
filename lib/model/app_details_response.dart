import 'api.dart';

class AppDetailsResponse {
  List<AppDetailsAPI>? api;

  AppDetailsResponse({
      required this.api});

  AppDetailsResponse.fromJson(dynamic json) {
    if (json["ACAN_API"] != null) {
      api = [];
      json["ACAN_API"].forEach((v) {
        api!.add(AppDetailsAPI.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (api != null) {
      map["ACAN_API"] = api!.map((v) => v.toJson()).toList();
    }
    return map;
  }

}