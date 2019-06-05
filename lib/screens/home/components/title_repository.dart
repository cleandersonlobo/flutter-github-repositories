import 'package:flutter/material.dart';

class RepositoryName extends StatelessWidget {
  RepositoryName({@required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Text(
        name,
        style: TextStyle(
            fontSize: 20.0,
            letterSpacing: 0.5,
            fontWeight: FontWeight.bold,
            color: Colors.blue),
      ),
    );
  }
}
