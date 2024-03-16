// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RepositoryInfo> items, int totalCount, int currentPage)
        value,
    required TResult Function() noSearchWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<RepositoryInfo> items, int totalCount, int currentPage)?
        value,
    TResult? Function()? noSearchWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<RepositoryInfo> items, int totalCount, int currentPage)?
        value,
    TResult Function()? noSearchWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Value value) value,
    required TResult Function(NoSearchWord value) noSearchWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Value value)? value,
    TResult? Function(NoSearchWord value)? noSearchWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Value value)? value,
    TResult Function(NoSearchWord value)? noSearchWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res, SearchResult>;
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res, $Val extends SearchResult>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ValueImplCopyWith<$Res> {
  factory _$$ValueImplCopyWith(
          _$ValueImpl value, $Res Function(_$ValueImpl) then) =
      __$$ValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RepositoryInfo> items, int totalCount, int currentPage});
}

/// @nodoc
class __$$ValueImplCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$ValueImpl>
    implements _$$ValueImplCopyWith<$Res> {
  __$$ValueImplCopyWithImpl(
      _$ValueImpl _value, $Res Function(_$ValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalCount = null,
    Object? currentPage = null,
  }) {
    return _then(_$ValueImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RepositoryInfo>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ValueImpl extends Value {
  const _$ValueImpl(
      {required final List<RepositoryInfo> items,
      required this.totalCount,
      required this.currentPage})
      : _items = items,
        super._();

  final List<RepositoryInfo> _items;
  @override
  List<RepositoryInfo> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int totalCount;
  @override
  final int currentPage;

  @override
  String toString() {
    return 'SearchResult.value(items: $items, totalCount: $totalCount, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), totalCount, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueImplCopyWith<_$ValueImpl> get copyWith =>
      __$$ValueImplCopyWithImpl<_$ValueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RepositoryInfo> items, int totalCount, int currentPage)
        value,
    required TResult Function() noSearchWord,
  }) {
    return value(items, totalCount, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<RepositoryInfo> items, int totalCount, int currentPage)?
        value,
    TResult? Function()? noSearchWord,
  }) {
    return value?.call(items, totalCount, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<RepositoryInfo> items, int totalCount, int currentPage)?
        value,
    TResult Function()? noSearchWord,
    required TResult orElse(),
  }) {
    if (value != null) {
      return value(items, totalCount, currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Value value) value,
    required TResult Function(NoSearchWord value) noSearchWord,
  }) {
    return value(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Value value)? value,
    TResult? Function(NoSearchWord value)? noSearchWord,
  }) {
    return value?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Value value)? value,
    TResult Function(NoSearchWord value)? noSearchWord,
    required TResult orElse(),
  }) {
    if (value != null) {
      return value(this);
    }
    return orElse();
  }
}

abstract class Value extends SearchResult {
  const factory Value(
      {required final List<RepositoryInfo> items,
      required final int totalCount,
      required final int currentPage}) = _$ValueImpl;
  const Value._() : super._();

  List<RepositoryInfo> get items;
  int get totalCount;
  int get currentPage;
  @JsonKey(ignore: true)
  _$$ValueImplCopyWith<_$ValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoSearchWordImplCopyWith<$Res> {
  factory _$$NoSearchWordImplCopyWith(
          _$NoSearchWordImpl value, $Res Function(_$NoSearchWordImpl) then) =
      __$$NoSearchWordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoSearchWordImplCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$NoSearchWordImpl>
    implements _$$NoSearchWordImplCopyWith<$Res> {
  __$$NoSearchWordImplCopyWithImpl(
      _$NoSearchWordImpl _value, $Res Function(_$NoSearchWordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoSearchWordImpl extends NoSearchWord {
  const _$NoSearchWordImpl() : super._();

  @override
  String toString() {
    return 'SearchResult.noSearchWord()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoSearchWordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<RepositoryInfo> items, int totalCount, int currentPage)
        value,
    required TResult Function() noSearchWord,
  }) {
    return noSearchWord();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<RepositoryInfo> items, int totalCount, int currentPage)?
        value,
    TResult? Function()? noSearchWord,
  }) {
    return noSearchWord?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<RepositoryInfo> items, int totalCount, int currentPage)?
        value,
    TResult Function()? noSearchWord,
    required TResult orElse(),
  }) {
    if (noSearchWord != null) {
      return noSearchWord();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Value value) value,
    required TResult Function(NoSearchWord value) noSearchWord,
  }) {
    return noSearchWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Value value)? value,
    TResult? Function(NoSearchWord value)? noSearchWord,
  }) {
    return noSearchWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Value value)? value,
    TResult Function(NoSearchWord value)? noSearchWord,
    required TResult orElse(),
  }) {
    if (noSearchWord != null) {
      return noSearchWord(this);
    }
    return orElse();
  }
}

abstract class NoSearchWord extends SearchResult {
  const factory NoSearchWord() = _$NoSearchWordImpl;
  const NoSearchWord._() : super._();
}
