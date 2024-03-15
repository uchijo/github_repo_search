import 'package:github_repo_search/controller/query_notifier/query_notifier.dart';
import 'package:github_repo_search/model/repository_info/repository_info.dart';
import 'package:github_repo_search/model/search_result/search_result.dart';
import 'package:github_repo_search/repository_impl/github_search_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_result_notifier.g.dart';

// run this to generate code
// dart run build_runner build

@riverpod
class SearchResultNotifier extends _$SearchResultNotifier {
  @override
  Future<SearchResult> build() async {
    final repo = ref.read(githubSearchRepositoryProvider);

    // queryをwatchするとapiを叩く回数が多くなってしまう
    // 検索ボタンを押したらこのNotifierをinvalidateするようにする
    final query = ref.read(queryNotifierProvider);

    // 検索キーワードがない場合はAPIを叩かない
    if (query.keyword.isEmpty) {
      return SearchResult(items: <RepositoryInfo>[], totalCount: 0);
    }

    final searchResult = await repo.search(query);

    return searchResult;
  }
}
