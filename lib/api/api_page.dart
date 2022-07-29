import 'dart:convert';

import 'package:http/http.dart' as http;

import 'data_con.dart';

getadata() async {
  final response = await http.get(Uri.https(
      'mj09store.000webhostapp.com', 'flutter_php_connection/get.php'));
  var jsondata = jsonDecode(response.body);
  // print(jsondata);
  List<data_con> Data_cons = [];
  for (var api in jsondata) {
    data_con Data_con =
        data_con(id: api['id'], name: api['name'], price: api['price']);
    Data_cons.add(Data_con);
  }
  // print(Data_cons.length);
  return Data_cons;
}

getadata1() async {
  final response = await http
      .get(Uri.https('mj09store.000webhostapp.com', 'register_or_not/get.php'));
  var jsondata = jsonDecode(response.body);
  List<insertdata> InsertDatas = [];
  for (var apii in jsondata) {
    insertdata InsertData = insertdata(
        id: apii['id'], email: apii['email'], password: apii['password']);
    InsertDatas.add(InsertData);
  }
  return InsertDatas;
  print(jsondata);
  print(jsondata.length);
}