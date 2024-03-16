import 'dart:async';

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
              NoSearchWord() => const _NoSearchWordInfo(),
              Value(
                :final items,
                :final isPagenating,
                :final totalCount,
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
                        totalCount: totalCount,
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
    required this.totalCount,
  });

  final List<RepositoryInfo> items;
  final bool hasNextPage;
  final bool isPagenating;
  final Future<void> Function() loadNextPage;
  final int totalCount;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          // 検索結果の総数
          _TotalRepoCount(totalCount: totalCount),

          // リストアイテム
          for (final item in items)
            RepositoryTile(
              repositoryInfo: item,
            ),

          // 読み込みボタン類
          if (isPagenating) const LinearProgressIndicator(),
          if (hasNextPage && !isPagenating)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: OutlinedButton(
                onPressed: loadNextPage,
                child: const Text('load more'),
              ),
            ),
        ],
      ),
    );
  }
}

class _NoSearchWordInfo extends StatelessWidget {
  const _NoSearchWordInfo();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'No search word set.\nStart searching from the search bar below!',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}

class _TotalRepoCount extends StatelessWidget {
  const _TotalRepoCount({required this.totalCount});

  final int totalCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorLight.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.check),
                const SizedBox(width: 8),
                Text(
                  'found $totalCount repositories.',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
