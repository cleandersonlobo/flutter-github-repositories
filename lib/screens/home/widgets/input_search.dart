import 'package:flutter/material.dart';
import 'package:github_repositories/screens/home/widgets/progress_button.dart';

class InputSearchReposity extends StatelessWidget {
  InputSearchReposity({ @required this.onPress, @required this.controller, this.isLoading });

  final Function onPress;
  final TextEditingController controller;
  final bool isLoading;
  
  _onPress() {
    onPress(controller.text);
  }

  _onSubmit(String text) {
    onPress(text);
  }



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
              controller: controller,
              autocorrect: false,
              onSubmitted: _onSubmit,
              textCapitalization: TextCapitalization.none,
              decoration: const InputDecoration(
                  hintText: 'Search ex.: flutter/flutter',
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          SizedBox(width: 10.0),
          Flexible(
            flex: 1,
            child: ProgressButton(
              loading: isLoading,
              onPressed: _onPress,
            ),
          ),
        ],
      ),
    );
  }
}
