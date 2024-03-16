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

final mockResult2 = [
  RepositoryInfo(
    id: 696228357,
    name: 'walica-clone-web',
    fullName: 'uchijo/walica-clone-web',
    owner: Owner(
      id: 70194083,
      login: 'uchijo',
      avatarUrl: 'https://avatars.githubusercontent.com/u/70194083?v=4',
      htmlUrl: 'https://github.com/uchijo',
    ),
    language: 'TypeScript',
    stargazersCount: 1,
    watchersCount: 1,
    forks: 0,
    openIssues: 0,
  ),
];

class GithubSearchRepositoryMock implements GithubSearchRepository {
  @override
  Future<SearchResponse> search(Query query, {int page = 1}) async {
    if (page == 2) {
      return SearchResponse(items: mockResult2, totalCount: 2);
    }
    return SearchResponse(items: mockResult1, totalCount: 2);
  }
}
