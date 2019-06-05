import 'package:flutter/material.dart';
import 'package:github_repositories/utils/hex_color.dart';
import 'screens/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github Repository',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        scaffoldBackgroundColor: HexColor("#242933"),
        ),
      home: Home(),
    );
  }
}
