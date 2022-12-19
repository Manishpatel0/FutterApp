import 'package:flutter/material.dart';
import 'package:flutterapp/widget00.dart';
import 'package:flutterapp/widgets/widget01.dart';
import 'package:flutterapp/widgets/widget02.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyWidget02(),
    );
  }
}
