import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:testing_app/screens/home.dart';
import 'package:testing_app/screens/favorites.dart.dart';
import 'package:testing_app/models//favorites.dart.dart';

void main(List<String> args) {
  runApp(TestingApp());
}

class TestingApp extends StatelessWidget {
  const TestingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Favorites(),
      child: MaterialApp(
        title: 'TestingApp',
        theme: ThemeData(
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          HomePage.routeName: (context) => HomePage(),
          FavoritesPage.routeName: (context) => FavoritesPage(),
        },
        initialRoute: HomePage.routeName,
      ),
    );
  }
}
