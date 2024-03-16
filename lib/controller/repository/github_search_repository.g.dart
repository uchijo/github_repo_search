// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_search_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResponseImpl _$$SearchResponseImplFromJson(Map<String, dynamic> json) =>
    _$SearchResponseImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => RepositoryInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['total_count'] as int,
    );

Map<String, dynamic> _$$SearchResponseImplToJson(
        _$SearchResponseImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total_count': instance.totalCount,
    };
