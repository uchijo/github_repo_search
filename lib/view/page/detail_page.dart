import 'package:flutter/material.dart';
import 'package:github_repo_search/model/repository_info/repository_info.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.repositoryInfo});

  final RepositoryInfo repositoryInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('details: ${repositoryInfo.fullName}'),
      ),
      body: Column(
        children: <Widget>[
          if (repositoryInfo.owner?.avatarUrl != null)
            Image(image: NetworkImage(repositoryInfo.owner!.avatarUrl)),
          if (repositoryInfo.language != null) Text(repositoryInfo.language!),
          Text(repositoryInfo.stargazersCount.toString()),
          Text(repositoryInfo.watchersCount.toString()),
          Text(repositoryInfo.forks.toString()),
          Text(repositoryInfo.openIssues.toString()),
        ],
      ),
    );
  }
}
