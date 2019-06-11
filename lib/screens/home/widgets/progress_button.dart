import 'package:flutter/material.dart';
import 'package:github_repositories/utils/hex_color.dart';

class ProgressButton extends StatelessWidget {
  ProgressButton({@required this.onPressed, @required this.loading});

  final bool loading;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      highlightElevation: 2,
      color: HexColor("#2D9FFF"),
      padding: const EdgeInsets.all(8.0),
      textColor: Colors.white,
      child: buildButtonChild(),
      onPressed: onPressed,
    );
  }

  Widget buildButtonChild() {
    if (!loading) {
      return Icon(
        Icons.add,
        color: Colors.white,
        size: 30.0,
      );
    } else {
      return SizedBox(
          height: 30.0,
          width: 30.0,
          child: CircularProgressIndicator(
              value: null,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white)));
    }
  }
}
