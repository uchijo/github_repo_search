import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_search/controller/query_notifier/query_notifier.dart';
import 'package:github_repo_search/controller/search_result_notifier/search_result_notifier.dart';

class SearchStuff extends ConsumerWidget {
  const SearchStuff({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 12),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(8),
                labelText: 'search',
              ),
              onChanged: (value) {
                debugPrint('search word: $value');
                ref.read(queryNotifierProvider.notifier).setSearchWord(value);
              },
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            style: ButtonStyle(
              // add solid, rounded border
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            onPressed: () {
              ref.read(searchResultNotifierProvider.notifier).search();
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
