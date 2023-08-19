import 'package:flutter/material.dart';
import 'package:justcleandrycleaner/splash.dart';
//import 'package:justcleandrycleaner/splash.dart';
//import 'package:justcleandrycleaner/webone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp

  ({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JustCleanDrycleaner',
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Splash(),
    );
  }
}
