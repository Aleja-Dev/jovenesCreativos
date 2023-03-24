import 'package:example_api/user.dart';

class ListsUser {
  List<User> ?listUsers;

  ListsUser({
    this.listUsers,
  });

  ListsUser.fromJson(Map<String, dynamic> json) {
    if (json["listUsers"] != null) {
      listUsers = [];
      json["listUsers"].forEach((v) {
        listUsers!.add(User.fromJson(v));
      });
    }

    Map<String, dynamic> toJson() {
      final Map<String, dynamic> data = new Map<String, dynamic>();
      if (listUsers != null) {
        data["listUsers"] = listUsers!.map((user) => user.toJson()).toList();
      }

      return data;
    }
  }
}