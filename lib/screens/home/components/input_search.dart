import 'package:flutter/material.dart';
import 'package:github_repositories/utils/hex_color.dart';

class InputSearchReposity extends StatelessWidget {
  // InputSearchReposity();

  // final String descricao;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 4,
            child: TextField(
              style: TextStyle(backgroundColor: Colors.white),
              decoration: const InputDecoration(
                  hintText: 'Search Repository...',
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          SizedBox(width: 10.0),
          Flexible(
            flex: 1,
            child: RaisedButton(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 30.0,
              ),
              highlightElevation: 2,
              color: HexColor("#2D9FFF"),
              padding: const EdgeInsets.all(8.0),
              textColor: Colors.white,
              onPressed: () {
               
              },
            ),
          ),
        ],
      ),
    );
  }
}
