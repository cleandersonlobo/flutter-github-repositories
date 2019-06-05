import 'package:flutter/material.dart';

class RepositoryTitle extends StatelessWidget {
  RepositoryTitle({@required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 20.0,
            letterSpacing: 0.5,
            fontWeight: FontWeight.bold,
            color: Colors.blue),
      ),
    );
  }
}
