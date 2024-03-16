import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_search/controller/search_result_notifier/search_result_notifier.dart';
import 'package:github_repo_search/model/repository_info/repository_info.dart';
import 'package:github_repo_search/model/search_result/search_result.dart';
import 'package:github_repo_search/view/component/repository_tile.dart';

class RepositoryList extends ConsumerWidget {
  const RepositoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchResult = ref.watch(searchResultNotifierProvider);

    return Column(
      children: [
        if (searchResult.isLoading) const LinearProgressIndicator(),
        switch (searchResult) {
          AsyncData(:final value) => switch (value) {
              NoSearchWord() => const Text('no search word'),
              Value(
                :final items,
                :final isPagenating,
              ) =>
                items.isEmpty
                    ? const Text('no result')
                    : _ListCore(
                        items: items,
                        hasNextPage: value.hasNextPage,
                        isPagenating: isPagenating,
                        loadNextPage: ref
                            .read(searchResultNotifierProvider.notifier)
                            .loadNextPage,
                      ),
            },
          AsyncLoading() => const Text('loading...'),
          AsyncError(error: final err, stackTrace: final _) =>
            Text(err.toString()),
          // ここには辿り着かないはず
          _ => const Text('empty'),
        },
      ],
    );
  }
}

// リストを表示する部分を切り出し
class _ListCore extends StatelessWidget {
  const _ListCore({
    required this.items,
    required this.hasNextPage,
    required this.isPagenating,
    required this.loadNextPage,
  });

  final List<RepositoryInfo> items;
  final bool hasNextPage;
  final bool isPagenating;
  final Future<void> Function() loadNextPage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          // リストアイテム
          for (final item in items)
            RepositoryTile(
              repositoryInfo: item,
            ),

          // 読み込みボタン類
          if (isPagenating) const LinearProgressIndicator(),
          if (hasNextPage && !isPagenating)
            ElevatedButton(
              onPressed: loadNextPage,
              child: const Text('load more'),
            ),
        ],
      ),
    );
  }
}
