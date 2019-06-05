import 'package:flutter/material.dart';
import 'package:github_repositories/screens/home/components/description_repository.dart';
import 'package:github_repositories/screens/home/components/details_repository.dart';
import 'package:github_repositories/screens/home/components/title_repository.dart';
import 'package:github_repositories/models/repository.dart';

class RepositoryCard extends StatelessWidget {
  RepositoryCard({@required this.repository});

  final Repository repository;

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
              RepositoryName(name: repository.name),
              RepositoryDescription(
                description: repository.description,
              ),
              RepositoryDetails(stars: repository.stars, forks: repository.forks)
            ],
          ),
        ));
  }
}
