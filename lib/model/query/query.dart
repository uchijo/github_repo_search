import 'package:freezed_annotation/freezed_annotation.dart';

part 'query.freezed.dart';
part 'query.g.dart';

// run this to generate code
// dart run build_runner build

@freezed
class Query with _$Query {
  const factory Query({
    @Default('') String keyword,
  }) = _Query;

  factory Query.fromJson(Map<String, dynamic> json) => _$QueryFromJson(json);
}
