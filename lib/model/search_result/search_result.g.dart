// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultImpl _$$SearchResultImplFromJson(Map<String, dynamic> json) =>
    _$SearchResultImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => RepositoryInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['total_count'] as int,
    );

Map<String, dynamic> _$$SearchResultImplToJson(_$SearchResultImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total_count': instance.totalCount,
    };
