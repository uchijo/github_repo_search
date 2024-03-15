import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_search/controller/repository/github_search_repository.dart';
import 'package:github_repo_search/model/query/query.dart';
import 'package:github_repo_search/model/repository_info/repository_info.dart';
import 'package:github_repo_search/util/get_gh_token.dart';
import 'package:http/http.dart' as http;

final githubSearchRepositoryProvider = Provider<GithubSearchRepository>(
  (ref) => GithubSearchRepositoryImpl(),
);

class GithubSearchRepositoryImpl implements GithubSearchRepository {
  GithubSearchRepositoryImpl({http.Client? client})
      : _client = client ?? http.Client() {
    _token = getGHToken();
  }

  final http.Client _client;
  late final String _token;

  @override
  Future<List<RepositoryInfo>> search(Query query) async {
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
    final result = json['items'] as List;
    final hoge = result
        .map((e) => RepositoryInfo.fromJson(e as Map<String, dynamic>))
        .toList();

    return hoge;
  }
}
