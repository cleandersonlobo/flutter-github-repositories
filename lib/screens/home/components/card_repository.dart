import 'package:flutter/material.dart';
import 'package:github_repositories/screens/home/components/description_repository.dart';
import 'package:github_repositories/screens/home/components/details_repository.dart';
import 'package:github_repositories/screens/home/components/title_repository.dart';

class RepositoryCard extends StatelessWidget {
  RepositoryCard({@required this.title, this.description, this.stars, this.forks});

  final String title;
  final String description;
  final String stars;
  final String forks;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RepositoryTitle(title: title),
              RepositoryDescription(
                description: description,
              ),
              RepositoryDetails(stars: stars, forks: forks)
            ],
          ),
        ));
  }
}
