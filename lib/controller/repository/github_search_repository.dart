import 'package:github_repo_search/model/query/query.dart';
import 'package:github_repo_search/model/search_result/search_result.dart';

// ignore: one_member_abstracts
abstract interface class GithubSearchRepository {
  Future<SearchResult> search(Query query, {int page = 1});
}
