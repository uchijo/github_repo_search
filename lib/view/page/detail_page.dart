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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // アイコンとリポジトリ名
            buildHeader(context, repositoryInfo),

            const SizedBox(height: 24),

            // 統計情報
            buildStats(context, repositoryInfo),
          ],
        ),
      ),
    );
  }
}

Widget buildHeader(BuildContext context, RepositoryInfo repositoryInfo) {
  return Row(
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
          style: Theme.of(context).textTheme.titleLarge,
          overflow: TextOverflow.ellipsis,
          maxLines: 4,
        ),
      ),
    ],
  );
}

Widget buildStats(BuildContext context, RepositoryInfo repositoryInfo) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'stats',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 18, top: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (repositoryInfo.language != null) ...[
              Text(
                'language: ${repositoryInfo.language!}',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 6),
            ],
            Text(
              'stars: ${repositoryInfo.stargazersCount}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              'watch: ${repositoryInfo.watchersCount}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              'forks: ${repositoryInfo.forks}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              'issues: ${repositoryInfo.openIssues}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    ],
  );
}
