import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_search/controller/search_result_notifier/search_result_notifier.dart';
import 'package:github_repo_search/view/component/repository_list.dart';
import 'package:github_repo_search/view/component/repository_tile.dart';
import 'package:github_repo_search/view/component/search_bar.dart';

class TopPage extends ConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Page'),
      ),
      body: const Column(
        children: <Widget>[
          Expanded(
            child: RepositoryList(),
          ),
          SearchStuff(),
        ],
      ),
    );
  }
}
