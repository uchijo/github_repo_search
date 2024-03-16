import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_search/controller/query_notifier/query_notifier.dart';
import 'package:github_repo_search/controller/search_result_notifier/search_result_notifier.dart';

class SearchStuff extends ConsumerWidget {
  const SearchStuff({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            onChanged: (value) {
              debugPrint('search word: $value');
              ref.read(queryNotifierProvider.notifier).setSearchWord(value);
            },
          ),
        ),
        IconButton(
          onPressed: () {
            ref.read(searchResultNotifierProvider.notifier).search();
          },
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
