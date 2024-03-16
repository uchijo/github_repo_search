import 'package:flutter/material.dart';
import 'package:github_repo_search/model/repository_info/repository_info.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.repositoryInfo});

  final RepositoryInfo repositoryInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            // アイコンとリポジトリ名
            _buildHeader(context, repositoryInfo),

            const SizedBox(height: 24),

            // リポジトリの説明
            if (repositoryInfo.description != null)
              Align(
                alignment: Alignment.centerLeft,
                child: _buildDescription(context, repositoryInfo.description!),
              ),

            const SizedBox(height: 24),

            // 統計情報
            Align(
              alignment: Alignment.centerLeft,
              child: _buildStats(context, repositoryInfo),
            ),

            const SizedBox(height: 24),

            // open in browser button
            OutlinedButton(
              onPressed: () {
                launchUrlString(
                  'https://github.com/${repositoryInfo.fullName}',
                  mode: LaunchMode.externalApplication,
                );
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Open in Browser'),
                  SizedBox(width: 6),
                  Icon(Icons.open_in_new, size: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildHeader(BuildContext context, RepositoryInfo repositoryInfo) {
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

Widget _buildStats(BuildContext context, RepositoryInfo repositoryInfo) {
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

Widget _buildDescription(BuildContext context, String description) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'description',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 8),
        child: Text(
          description,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    ],
  );
}
