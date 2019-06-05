class Repository {
  String name;
  String description;
  String forks;
  String stars;

  Repository({ this.name, this.description, this.forks, this.stars });

  Repository.fromJson(Map json)
      : name = json['name'],
        description = json['description'],
        stars = json['stargazers_count'].toString(),
        forks = json['forks'].toString();

 Map toJson() {
    return {'name': name, 'description': description, 'stars': stars, 'forks': forks };
  }
}
