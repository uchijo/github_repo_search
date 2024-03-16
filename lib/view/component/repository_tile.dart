import 'package:flutter/material.dart';
import 'package:github_repo_search/model/repository_info/repository_info.dart';
import 'package:github_repo_search/view/page/detail_page.dart';

class RepositoryTile extends StatelessWidget {
  const RepositoryTile({super.key, required this.repositoryInfo});

  final RepositoryInfo repositoryInfo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push<DetailPage>(
          MaterialPageRoute(
            builder: (context) {
              return DetailPage(repositoryInfo: repositoryInfo);
            },
          ),
        );
      },
      title: Text(repositoryInfo.fullName),
    );
  }
}
