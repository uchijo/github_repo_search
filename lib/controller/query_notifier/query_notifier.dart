import 'package:github_repo_search/model/query/query.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'query_notifier.g.dart';

// run this to generate code
// dart run build_runner build

@riverpod
class QueryNotifier extends _$QueryNotifier {
  @override
  Query build() {
    return const Query();
  }

  void setSearchWord(String word) {
    state = state.copyWith(keyword: word);
  }
}
