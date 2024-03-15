import 'package:github_repo_search/controller/repository/github_search_repository.dart';
import 'package:github_repo_search/model/owner/owner.dart';
import 'package:github_repo_search/model/query/query.dart';
import 'package:github_repo_search/model/repository_info/repository_info.dart';

final mockResult1 = [
  RepositoryInfo(
    id: 695499594,
    name: 'walica-clone-backend',
    fullName: 'uchijo/walica-clone-backend',
    owner: Owner(
      id: 70194083,
      login: 'uchijo',
      avatarUrl: 'https://avatars.githubusercontent.com/u/70194083?v=4',
      htmlUrl: 'https://github.com/uchijo',
    ),
    language: 'Go',
    stargazersCount: 1,
    watchersCount: 1,
    forks: 0,
    openIssues: 3,
  ),
];

class GithubSearchRepositoryMock implements GithubSearchRepository {
  @override
  Future<List<RepositoryInfo>> search(Query query) async {
    return mockResult1;
  }
}
