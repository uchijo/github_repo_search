// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_search/model/query/query.dart';
import 'package:github_repo_search/model/repository_info/repository_info.dart';

part 'github_search_repository.freezed.dart';
part 'github_search_repository.g.dart';

// run this to generate code
// dart run build_runner build

@freezed
class SearchResponse with _$SearchResponse {
  factory SearchResponse({
    required List<RepositoryInfo> items,
    @JsonKey(name: 'total_count') required int totalCount,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}

// ignore: one_member_abstracts
abstract interface class GithubSearchRepository {
  Future<SearchResponse> search(Query query, {int page = 1});
}
