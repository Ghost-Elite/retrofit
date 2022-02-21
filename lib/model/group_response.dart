import 'groupitems.dart';

class GroupResponse {
  List<GroupItems>? allitems;

  GroupResponse({
      this.allitems});

  GroupResponse.fromJson(dynamic json) {
    if (json["allitems"] != null) {
      allitems = [];
      json["allitems"].forEach((v) {
        allitems!.add(GroupItems.fromJson(v));
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