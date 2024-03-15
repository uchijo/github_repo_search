// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_search/model/repository_info/repository_info.dart';

part 'search_result.freezed.dart';
part 'search_result.g.dart';

// run this to generate code
// dart run build_runner build

@freezed
class SearchResult with _$SearchResult {
  factory SearchResult({
    required List<RepositoryInfo> items,
    @JsonKey(name: 'total_count') required int totalCount,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}
