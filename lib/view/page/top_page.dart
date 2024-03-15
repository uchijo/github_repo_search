import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_search/controller/search_result_notifier/search_result_notifier.dart';
import 'package:github_repo_search/view/component/search_bar.dart';

class TopPage extends ConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchResult = ref.watch(searchResultNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Page'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: switch (searchResult) {
              AsyncData(value: final data) => data.items.isEmpty
                  ? const Text('empty')
                  : ListView(
                      children: [
                        for (final item in data.items) Text(item.fullName),
                      ],
                    ),
              _ => const Text('loading...'),
            },
          ),
          const SearchStuff(),
        ],
      ),
    );
  }
}
