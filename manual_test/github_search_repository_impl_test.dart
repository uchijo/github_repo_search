import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_search/model/query/query.dart';
import 'package:github_repo_search/repository_impl/github_search_repository_impl.dart';

void main() {
  test('sample test for manual test', () async {
    final repo = GithubSearchRepositoryImpl();
    const query = Query(keyword: 'flutter');

    final result = await repo.search(query);

    expect(result.isNotEmpty, true);
  });
}
