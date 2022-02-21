import 'list_shows_by_chaines.dart';

class GroupItems {
  String? groupName;
  String? listShowsByGroup;
  String? listAlauneByGroup;
  List<ListShowsByChannel>? listShowsByChaines;
  List<ListShowsByChannel>? listAlauneByChaine;

  GroupItems({
      this.groupName, 
      this.listShowsByGroup, 
      this.listAlauneByGroup,
      this.listShowsByChaines,
      this.listAlauneByChaine,
  });

  GroupItems.fromJson(dynamic json) {
    groupName = json["group_name"];
    listShowsByGroup = json["list_shows_by_group"];
    listAlauneByGroup = json["list_alaune_by_group"];
    if (json["list_shows_by_chaines"] != null) {
      listShowsByChaines = [];
      json["list_shows_by_chaines"].forEach((v) {
        listShowsByChaines!.add(ListShowsByChannel.fromJson(v));
      });
    }
    if (json["list_alaune_by_chaine"] != null) {
      listShowsByChaines = [];
      json["list_alaune_by_chaine"].forEach((v) {
        listShowsByChaines!.add(ListShowsByChannel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["group_name"] = groupName;
    map["list_shows_by_group"] = listShowsByGroup;
    map["list_alaune_by_group"] = listAlauneByChaine;
    if (listShowsByChaines != null) {
      map["list_shows_by_chaines"] = listShowsByChaines!.map((v) => v.toJson()).toList();
    }
    if (listAlauneByChaine != null) {
      map["list_alaune_by_chaine"] = listAlauneByChaine!.map((v) => v.toJson()).toList();
    }
    return map;
  }

}