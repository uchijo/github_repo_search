import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_search/controller/query_notifier/query_notifier.dart';
import 'package:github_repo_search/controller/search_result_notifier/search_result_notifier.dart';
import 'package:github_repo_search/model/repository_info/repository_info.dart';
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
      <RepositoryInfo>[],
    );

    // 検索キーワードを設定しても結果は変わらない
    container.read(queryNotifierProvider.notifier).setSearchWord('flutter');
    var searchResult =
        await container.read(searchResultNotifierProvider.future);
    expect(searchResult, <RepositoryInfo>[]);

    // invalidateして初めて検索結果が更新される
    container.invalidate(searchResultNotifierProvider);
    searchResult = await container.read(searchResultNotifierProvider.future);
    expect(searchResult.length, mockResult1.length);
    expect(searchResult[0], mockResult1[0]);
  });
}
