import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_search/controller/search_result_notifier/search_result_notifier.dart';
import 'package:github_repo_search/model/search_result/search_result.dart';
import 'package:github_repo_search/view/component/repository_tile.dart';

class RepositoryList extends ConsumerWidget {
  const RepositoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchResult = ref.watch(searchResultNotifierProvider);

    return switch (searchResult) {
      AsyncData(:final value) => switch (value) {
          NoSearchWord() => const Text('no search word'),
          Value(
            items: final data,
          ) =>
            data.isEmpty
                ? const Text('no result')
                : ListView(
                    children: [
                      for (final item in data)
                        RepositoryTile(
                          repositoryInfo: item,
                        ),
                    ],
                  ),
        },
      AsyncLoading() => const Text('loading...'),
      AsyncError(error: final err, stackTrace: final _) => Text(err.toString()),
      // ここには辿り着かないはず
      _ => const Text('empty'),
    };
  }
}
