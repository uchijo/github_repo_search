import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_search/controller/query_notifier/query_notifier.dart';
import 'package:github_repo_search/controller/search_result_notifier/search_result_notifier.dart';
import 'package:github_repo_search/model/search_result/search_result.dart';
import 'package:github_repo_search/repository_impl/github_search_repository_impl.dart';

import '../create_container.dart';
import '../mock/github_search_repository_mock.dart';

void main() {
  test('test SearchResultNotifier', () async {
    final container = createContainer(
      overrides: [
        githubSearchRepositoryProvider.overrideWith(
          (ref) => GithubSearchRepositoryMock(),
        ),
      ],
    );

    // 初期状態では検索結果が空
    expect(
      await container.read(searchResultNotifierProvider.future),
      isA<NoSearchWord>(),
    );

    // 検索キーワードを設定しても結果は変わらない
    container.read(queryNotifierProvider.notifier).setSearchWord('flutter');
    var searchResult =
        await container.read(searchResultNotifierProvider.future);
    expect(searchResult, isA<NoSearchWord>());

    // invalidateして初めて検索結果が更新される
    container.read(searchResultNotifierProvider.notifier).search();
    searchResult = await container.read(searchResultNotifierProvider.future);
    expect(searchResult, isA<Value>());
    switch (searchResult) {
      case Value(:final items):
        expect(items.length, mockResult1.length);
        expect(items[0], mockResult1[0]);
      default:
        fail('searchResult is not Value');
    }
  });

  test('test SearchResultNotifier pagenation', () async {
    final container = createContainer(
      overrides: [
        githubSearchRepositoryProvider.overrideWith(
          (ref) => GithubSearchRepositoryMock(),
        ),
      ],
    );

    // 検索ワードを設定して検索
    container.read(queryNotifierProvider.notifier).setSearchWord('dummy');
    container.read(searchResultNotifierProvider.notifier).search();
    final searchResult1 =
        await container.read(searchResultNotifierProvider.future);

    // 1ページ目のみ保持
    expect(searchResult1, isA<Value>());
    switch (searchResult1) {
      case Value(:final items, :final totalCount, :final currentPage):
        expect(items.length, isNot(totalCount));
        expect(currentPage, 1);
      default:
        fail('searchResult is not Value');
    }

    // 2ページ目を取得
    expect(searchResult1.hasNextPage, true);
    await container.read(searchResultNotifierProvider.notifier).loadNextPage();
    final searchResult2 = await container.read(
      searchResultNotifierProvider.future,
    );
    switch (searchResult2) {
      case Value(:final items, :final totalCount, :final currentPage):
        expect(items.length, totalCount);
        expect(currentPage, 2);
      default:
        fail('searchResult is not Value');
    }

    // 3ページ目は存在しない
    expect(searchResult2.hasNextPage, false);
  });
}
