import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_search/model/query/query.dart';
import 'package:github_repo_search/repository_impl/github_search_repository_impl.dart';
import 'package:github_repo_search/util/get_gh_token.dart';

void main() {
  test('sample test for manual test', () async {
    await dotenv.load();

    final repo = GithubSearchRepositoryImpl(token: getGHToken());
    const query = Query(keyword: 'flutter');

    final result = await repo.search(query);

    expect(result.items.isNotEmpty, true);
  });
}
