import 'package:flutter/material.dart';
import 'package:techcrunch/loginpagedetail.dart';
import 'package:techcrunch/pdf.dart';
import 'package:techcrunch/login1.dart';
import 'forgot_password.dart';
import 'package:techcrunch/usercredential1.dart';
import 'package:techcrunch/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  // void initState() {
  //   getadata();
  // }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: Scaffold(
            // appBar: AppBar(
            //   title: Text("Flutter And Php"),
            // ),
            body: homepage()));
  }
}