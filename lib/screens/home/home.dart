import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:github_repositories/models/repository.dart';
import 'package:github_repositories/screens/home/components/card_repository.dart';
import 'package:github_repositories/screens/home/components/input_search.dart';
import 'package:github_repositories/screens/home/components/title_header.dart';
import 'package:github_repositories/services/api.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  List<Repository> repositories;
  @override
  void initState() {
    super.initState();
    repositories = List<Repository>();
  }

  var isLoading = false;

  Future<void> alert(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Opps!'),
          content: const Text('Repository not found'),
          actions: <Widget>[
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  _getRepository(String name) async {
    try {
      var response = await getRepository(name);
      if (response.statusCode == 200) {
        // If server returns an OK response, parse the JSON
        Map model = json.decode(response.body);
        print(response.body);
        setState(() {
          Repository resp = Repository.fromJson(model);
          if (resp != null) repositories.add(resp);
          isLoading = false;
        });
      } else {
        // If that response was not OK, throw an error.
        throw Exception('Failed to load post');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      this.alert(context);
    }
  }

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
          InputSearchReposity(onPress: _getRepository),
          Expanded(
            child: ListView.builder(
              itemCount: repositories == null ? 0 : repositories.length,
              padding: const EdgeInsets.all(0),
              itemBuilder: (context, int index) {
                return RepositoryCard(repository: repositories[index]);
              },
            ),
          ),
        ],
      ),
    ));
  }
}
