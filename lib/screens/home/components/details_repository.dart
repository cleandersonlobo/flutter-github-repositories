import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RepositoryDetails extends StatelessWidget {
  RepositoryDetails({this.stars, this.forks});

  final String stars;
  final String forks;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.star,
                  size: 18.0,
                ),
                SizedBox(width: 5.0),
                Container(
                  child: Text(
                    stars,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 15.0),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.codeBranch,
                  size: 14.0,
                ),
                SizedBox(width: 5.0),
                Container(
                  child: Text(
                    forks,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
