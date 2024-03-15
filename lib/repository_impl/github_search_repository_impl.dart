import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_search/controller/repository/github_search_repository.dart';
import 'package:github_repo_search/model/query/query.dart';
import 'package:github_repo_search/model/repository_info/repository_info.dart';

final githubSearchRepositoryProvider = Provider<GithubSearchRepository>(
  (ref) => GithubSearchRepositoryImpl(),
);

class GithubSearchRepositoryImpl implements GithubSearchRepository {
  @override
  Future<List<RepositoryInfo>> search(Query query) async {
    throw UnimplementedError();
  }
}
