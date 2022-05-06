import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ame = TextEditingController();

  // This widget is the root of your application.
  void comm() {
    var donn = ame.text;
  }

  void dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        var dynamic_dropvalue = selectedValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('NoteCast'), actions: <Widget>[
              IconButton(onPressed: null, tooltip: 'homie', icon: Icon(Icons.arrow_circle_down)),
            ]),
            drawer: Drawer(child: Text('drawer')),
            body: Column(children: [
              Text('come on'),
              TextField(
                controller: ame,
                decoration: InputDecoration(hintText: 'Enter your Name', labelText: 'Name', border: InputBorder.none, fillColor: Colors.black12, labelStyle: TextStyle(), prefixIcon: Icon(Icons.security_sharp)),
              ),
              DropdownButtonFormField<String>(
                items: [
                  DropdownMenuItem(child: Text("Cream"), value: "Cream"),
                  DropdownMenuItem(child: Text("Kitkat"), value: "Kitkat"),
                  DropdownMenuItem(child: Text("Butter"), value: "butter"),
                ],
                dropdownColor: Colors.tealAccent,
                iconEnabledColor: Colors.blue,
                onChanged: dropdownCallback,
                decoration: InputDecoration(
                  labelText: 'selected',
                  prefixIconColor: Colors.tealAccent,
                  prefixIcon: Icon(Icons.food_bank_rounded),
                ),
              ),
              RaisedButton(child: Text('Send'), textColor: Colors.black38, color: Colors.tealAccent, hoverColor: Colors.pinkAccent, onPressed: comm)
            ])));
  }
}
