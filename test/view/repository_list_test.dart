import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_search/controller/query_notifier/query_notifier.dart';
import 'package:github_repo_search/controller/search_result_notifier/search_result_notifier.dart';
import 'package:github_repo_search/repository_impl/github_search_repository_impl.dart';
import 'package:github_repo_search/view/component/repository_list.dart';

import '../create_testable_widget.dart';
import '../mock/github_search_repository_mock.dart';

void main() {
  testWidgets('test repository list', (tester) async {
    await dotenv.load();

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          githubSearchRepositoryProvider.overrideWithValue(
            GithubSearchRepositoryMock(),
          ),
        ],
        child: createTestableWidget(const RepositoryList()),
      ),
    );
    final element = tester.element(find.byType(RepositoryList));
    final container = ProviderScope.containerOf(element);

    // 初期状態ではloadingだが、読み込みが終わるとemptyになる
    expect(find.text('loading...'), findsOneWidget);
    await tester.pump(const Duration(seconds: 1));
    await tester.pump();
    expect(find.textContaining('search word'), findsOneWidget);

    // 検索するとリストが表示される
    container.read(queryNotifierProvider.notifier).setSearchWord('flutter');
    container.read(searchResultNotifierProvider.notifier).search();
    await tester.pump(const Duration(seconds: 3));
    await tester.pump();
    expect(find.byType(ListView), findsOneWidget);
  });
}
