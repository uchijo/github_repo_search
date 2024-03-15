// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepositoryInfo _$RepositoryInfoFromJson(Map<String, dynamic> json) {
  return _RepositoryInfo.fromJson(json);
}

/// @nodoc
mixin _$RepositoryInfo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  Owner get owner => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'watchers_count')
  int get watchersCount => throw _privateConstructorUsedError;
  int get forks => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_issues')
  int get openIssues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryInfoCopyWith<RepositoryInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryInfoCopyWith<$Res> {
  factory $RepositoryInfoCopyWith(
          RepositoryInfo value, $Res Function(RepositoryInfo) then) =
      _$RepositoryInfoCopyWithImpl<$Res, RepositoryInfo>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'full_name') String fullName,
      Owner owner,
      String language,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      int forks,
      @JsonKey(name: 'open_issues') int openIssues});

  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$RepositoryInfoCopyWithImpl<$Res, $Val extends RepositoryInfo>
    implements $RepositoryInfoCopyWith<$Res> {
  _$RepositoryInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? owner = null,
    Object? language = null,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? forks = null,
    Object? openIssues = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      openIssues: null == openIssues
          ? _value.openIssues
          : openIssues // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepositoryInfoImplCopyWith<$Res>
    implements $RepositoryInfoCopyWith<$Res> {
  factory _$$RepositoryInfoImplCopyWith(_$RepositoryInfoImpl value,
          $Res Function(_$RepositoryInfoImpl) then) =
      __$$RepositoryInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'full_name') String fullName,
      Owner owner,
      String language,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      int forks,
      @JsonKey(name: 'open_issues') int openIssues});

  @override
  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$RepositoryInfoImplCopyWithImpl<$Res>
    extends _$RepositoryInfoCopyWithImpl<$Res, _$RepositoryInfoImpl>
    implements _$$RepositoryInfoImplCopyWith<$Res> {
  __$$RepositoryInfoImplCopyWithImpl(
      _$RepositoryInfoImpl _value, $Res Function(_$RepositoryInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? owner = null,
    Object? language = null,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? forks = null,
    Object? openIssues = null,
  }) {
    return _then(_$RepositoryInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      openIssues: null == openIssues
          ? _value.openIssues
          : openIssues // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositoryInfoImpl implements _RepositoryInfo {
  _$RepositoryInfoImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'full_name') required this.fullName,
      required this.owner,
      required this.language,
      @JsonKey(name: 'stargazers_count') required this.stargazersCount,
      @JsonKey(name: 'watchers_count') required this.watchersCount,
      required this.forks,
      @JsonKey(name: 'open_issues') required this.openIssues});

  factory _$RepositoryInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryInfoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  final Owner owner;
  @override
  final String language;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  final int watchersCount;
  @override
  final int forks;
  @override
  @JsonKey(name: 'open_issues')
  final int openIssues;

  @override
  String toString() {
    return 'RepositoryInfo(id: $id, name: $name, fullName: $fullName, owner: $owner, language: $language, stargazersCount: $stargazersCount, watchersCount: $watchersCount, forks: $forks, openIssues: $openIssues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.watchersCount, watchersCount) ||
                other.watchersCount == watchersCount) &&
            (identical(other.forks, forks) || other.forks == forks) &&
            (identical(other.openIssues, openIssues) ||
                other.openIssues == openIssues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, fullName, owner,
      language, stargazersCount, watchersCount, forks, openIssues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryInfoImplCopyWith<_$RepositoryInfoImpl> get copyWith =>
      __$$RepositoryInfoImplCopyWithImpl<_$RepositoryInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryInfoImplToJson(
      this,
    );
  }
}

abstract class _RepositoryInfo implements RepositoryInfo {
  factory _RepositoryInfo(
          {required final int id,
          required final String name,
          @JsonKey(name: 'full_name') required final String fullName,
          required final Owner owner,
          required final String language,
          @JsonKey(name: 'stargazers_count') required final int stargazersCount,
          @JsonKey(name: 'watchers_count') required final int watchersCount,
          required final int forks,
          @JsonKey(name: 'open_issues') required final int openIssues}) =
      _$RepositoryInfoImpl;

  factory _RepositoryInfo.fromJson(Map<String, dynamic> json) =
      _$RepositoryInfoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  Owner get owner;
  @override
  String get language;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  int get watchersCount;
  @override
  int get forks;
  @override
  @JsonKey(name: 'open_issues')
  int get openIssues;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryInfoImplCopyWith<_$RepositoryInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
