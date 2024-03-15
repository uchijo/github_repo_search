import 'dart:convert';

import 'package:github_repo_search/controller/repository/github_search_repository.dart';
import 'package:github_repo_search/model/query/query.dart';
import 'package:github_repo_search/model/search_result/search_result.dart';
import 'package:github_repo_search/util/get_gh_token.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'github_search_repository_impl.g.dart';

@riverpod
GithubSearchRepository githubSearchRepository(
  GithubSearchRepositoryRef ref,
) {
  return GithubSearchRepositoryImpl(token: getGHToken());
}

class GithubSearchRepositoryImpl implements GithubSearchRepository {
  GithubSearchRepositoryImpl({http.Client? client, required String token})
      : _client = client ?? http.Client() {
    _token = token;
  }

  final http.Client _client;
  late final String _token;

  @override
  Future<SearchResult> search(Query query, {int page = 1}) async {
    if (query.keyword.isEmpty) {
      throw Exception('keyword is empty');
    }

    final res = await _client.get(
      Uri(
        scheme: 'https',
        host: 'api.github.com',
        path: '/search/repositories',
        queryParameters: {
          'q': query.keyword,
          'page': page.toString(),
        },
      ),
      headers: {
        'Authorization': 'Bearer $_token',
      },
    );

    if (res.statusCode != 200) {
      throw Exception('Failed to load data');
    }

    final json = jsonDecode(res.body) as Map<String, dynamic>;
    final result = SearchResult.fromJson(json);

    return result;
  }
}
