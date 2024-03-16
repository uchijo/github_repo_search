import 'package:flutter/material.dart';
import 'package:github_repo_search/model/repository_info/repository_info.dart';
import 'package:shimmer/shimmer.dart';

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
          // アイコンとリポジトリ名
          buildHeader(context, repositoryInfo),
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

Widget buildHeader(BuildContext context, RepositoryInfo repositoryInfo) {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Row(
      children: [
        // アイコン
        if (repositoryInfo.owner?.avatarUrl != null)
          ClipRRect(
            borderRadius: BorderRadius.circular(9999),
            child: Image(
              height: 130,
              image: NetworkImage(repositoryInfo.owner!.avatarUrl),
              // ローディング中はShimmerを表示
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return Shimmer.fromColors(
                  baseColor: Colors.grey,
                  highlightColor: Colors.white,
                  child: Container(
                    width: 130,
                    height: 130,
                    color: Colors.white,
                  ),
                );
              },
            ),
          ),

        const SizedBox(width: 16),

        // リポジトリ名
        Flexible(
          child: Text(
            repositoryInfo.fullName,
            style: Theme.of(context).textTheme.headlineSmall,
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
          ),
        ),
      ],
    ),
  );
}
