import 'package:flutter/material.dart';
import 'package:github_repositories/screens/home/components/card_repository.dart';
import 'package:github_repositories/screens/home/components/input_search.dart';
import 'package:github_repositories/screens/home/components/title_header.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TitleHeader(
            description: "Repositories",
          ),
          InputSearchReposity(),
          Expanded(
            flex: 0,
            child: Container(
              child: RepositoryCard(
                title: 'react',
                description: 'React Native lets you build mobile apps using only JavaScript.',
                stars: '200',
                forks: '200',
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
