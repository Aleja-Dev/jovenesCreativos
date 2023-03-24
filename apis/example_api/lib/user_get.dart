import 'dart:convert';
import 'package:http/http.dart' as http;

import 'user.dart';

Future<User> createGetById() async {
  var url = Uri.https('centauros.herokuapp.com', '/centauro/user/id/444444444');
  final response = await http.get(url);
  print(response.body.toString());

  return User.fromJson(json.decode(response.body));
}



Future<List<dynamic>>createGetAll() async {
  var url = Uri.https('centauros.herokuapp.com', '/centauro/user/users');
  final response = await http.get(url);
  List<dynamic>? users = [];
  if (response.statusCode == 200) {
    String ? body = utf8.decode(response.bodyBytes);
    final jsonData = jsonDecode(body);

    for (var item in jsonData) {
      users.add(item);
    }
  }
  print ("-------"+users.toString());
  return users;
}
