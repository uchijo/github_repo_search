// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_search/model/owner/owner.dart';

part 'repository_info.freezed.dart';
part 'repository_info.g.dart';

// run this to generate code
// dart run build_runner build

@freezed
class RepositoryInfo with _$RepositoryInfo {
  factory RepositoryInfo({
    required int id,
    required String name,
    @JsonKey(name: 'full_name') required String fullName,
    Owner? owner,
    String? language,
    @JsonKey(name: 'stargazers_count') required int stargazersCount,
    @JsonKey(name: 'watchers_count') required int watchersCount,
    required int forks,
    @JsonKey(name: 'open_issues') required int openIssues,
  }) = _RepositoryInfo;

  factory RepositoryInfo.fromJson(Map<String, dynamic> json) =>
      _$RepositoryInfoFromJson(json);
}
