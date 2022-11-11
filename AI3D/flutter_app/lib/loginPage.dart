// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cmdb/cmdb.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _deviceIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
              Image.asset('3d-printing-logo.png'),
              TextField(
                  decoration: InputDecoration(
                    labelText: "Device Id",
                  ),
                  controller: _deviceIdController)
            ]))));
  }
}
