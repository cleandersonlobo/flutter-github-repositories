import 'package:flutter/material.dart';

class RepositoryDescription extends StatelessWidget {
  RepositoryDescription({@required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Text(
        description,
        style: TextStyle(
            fontWeight: FontWeight.normal, height: 1.2, color: Colors.black54),
      ),
    );
  }
}
