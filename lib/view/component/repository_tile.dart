import 'package:flutter/material.dart';
import 'package:github_repo_search/model/repository_info/repository_info.dart';

class RepositoryTile extends StatelessWidget {
  const RepositoryTile({super.key, required this.repositoryInfo});

  final RepositoryInfo repositoryInfo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        // fixme: 画面遷移
      },
      title: Text(repositoryInfo.fullName),
    );
  }
}
