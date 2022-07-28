import 'package:flutter/material.dart';
import 'package:techcrunch/loginpagedetail.dart';
import 'package:techcrunch/pdf.dart';


import 'forgot_password.dart';

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
            body: pdf()));
  }
}