// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryInfoImpl _$$RepositoryInfoImplFromJson(Map<String, dynamic> json) =>
    _$RepositoryInfoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      language: json['language'] as String?,
      stargazersCount: json['stargazers_count'] as int,
      watchersCount: json['watchers_count'] as int,
      forks: json['forks'] as int,
      openIssues: json['open_issues'] as int,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$RepositoryInfoImplToJson(
        _$RepositoryInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'owner': instance.owner,
      'language': instance.language,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'forks': instance.forks,
      'open_issues': instance.openIssues,
      'description': instance.description,
    };
