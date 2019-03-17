import 'package:epic_seven_guide/pages/characters/characters_home.dart';
import 'package:epic_seven_guide/routes.dart';
import 'package:flutter/material.dart';
import 'package:epic_seven_guide/pages/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Epic Seven Guide',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
      theme: ThemeData.dark().copyWith(
      ),
      initialRoute: Routes.HOME,
      routes: Routes.routes,
    );
  }
}