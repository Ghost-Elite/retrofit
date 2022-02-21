import 'voditems.dart';

class VODResponse {
  List<VODItems>? allitems;

  VODResponse({
      this.allitems});

  VODResponse.fromJson(dynamic json) {
    if (json["allitems"] != null) {
      allitems = [];
      json["allitems"].forEach((v) {
        allitems!.add(VODItems.fromJson(v));
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