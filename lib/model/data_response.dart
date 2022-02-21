import 'apiitems.dart';

class DataResponse {
  List<APIItems>? allitems;

  DataResponse({
      this.allitems});

  DataResponse.fromJson(dynamic json) {
    if (json["allitems"] != null) {
      allitems = [];
      json["allitems"].forEach((v) {
        allitems!.add(APIItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (allitems != null) {
      map["allitems"] = allitems!.map((v) => v.toJson()).toList();
    }
    return map;
  }

}