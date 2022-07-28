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

// String imageurl="https://mj09store.000webhostapp.com/register_or_not/Photo_upload/uploads/";

getadata1() async {
  final response = await http
      .get(Uri.https('mj09store.000webhostapp.com', 'register_or_not/get.php'));
  var jsondata = jsonDecode(response.body);
  // print(jsondata);
  List<insertdata> Data_cons = [];
  for (var api in jsondata) {
    var data =
        'https://mj09store.000webhostapp.com/register_or_not/Photo_upload/uploads/' +
            api['image_name'];

    print(data);
    insertdata Data_con = insertdata(
        id: api['id'],
        email: api['email'],
        password: api['password'],
        image: data);
    Data_cons.add(Data_con);
  }
  // print(Data_cons.length);
  return Data_cons;
}