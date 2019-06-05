import 'package:flutter/material.dart';

class TitleHeader extends StatelessWidget {
  TitleHeader({@required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 0, top: 80, right: 0, bottom: 10),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              description,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 30.0,
                  letterSpacing: 0.8,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
            ),
          ),
        ],
      ),
    );
  }
}
