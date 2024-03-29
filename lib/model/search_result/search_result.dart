// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_search/model/repository_info/repository_info.dart';

part 'search_result.freezed.dart';

// run this to generate code
// dart run build_runner build

@freezed
sealed class SearchResult with _$SearchResult {
  const factory SearchResult.value({
    required List<RepositoryInfo> items,
    required int totalCount,
    required int currentPage,
    @Default(false) bool isPagenating,
  }) = Value;
  const factory SearchResult.noSearchWord() = NoSearchWord;

  const SearchResult._();

  bool get hasNextPage => switch (this) {
        Value(:final items, :final totalCount) => items.length < totalCount,
        _ => false,
      };
}
