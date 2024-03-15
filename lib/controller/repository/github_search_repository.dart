import 'package:github_repo_search/model/query/query.dart';
import 'package:github_repo_search/model/repository_info/repository_info.dart';

// ignore: one_member_abstracts
abstract interface class GithubSearchRepository {
  Future<List<RepositoryInfo>> search(Query query);
}
