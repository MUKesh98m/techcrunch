import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class forgot_password extends StatefulWidget {
  const forgot_password({Key? key}) : super(key: key);

  @override
  State<forgot_password> createState() => _forgot_passwordState();
}

class _forgot_passwordState extends State<forgot_password> {
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 100),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('asset/forgot.png'),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 200,
                child: Text(
                  "Reset Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.email, color: Colors.red),
                  contentPadding: EdgeInsets.only(left: 30),
                  hintText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                // width: 10,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.red),
                        ),
                        onPressed: () {
                          sendemail();
                        },
                        child: Container(
                            alignment: Alignment.center,
                            width: 100,
                            child: Text(
                              "Send Mail",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  sendemail() async {
    if (email != "") {
      try {
        String url =
            "https://mj09store.000webhostapp.com/Mailfunction/mailfunction.php";
        var response = await http.post(Uri.parse(url), body: {
          "email": email.text,
          "body":
              "https://mj09store.000webhostapp.com/register_or_not/update_form.php?email=" +
                  email.text
        });

        // var res = jsonDecode(response.body);
        print(response.toString());
        if (response.statusCode == 200) {
          // print(response.statusCode);
          var res = jsonDecode(response.body);

          // print(json.decode(response.body));
          // print(response.body);
          print(res);
        } else {
          print(response.statusCode);
        }
      } catch (e) {
        var kk = e.toString();
        print(kk);

        // }
      }
    } else {
      print("by");
    }
  }
}