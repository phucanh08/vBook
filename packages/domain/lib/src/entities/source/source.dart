import 'package:freezed_annotation/freezed_annotation.dart';

part 'source.freezed.dart';

@freezed
class SourceModel with _$SourceModel {
  const factory SourceModel({
    required String source,
    required String name,
    required String iconUrl,
    required String type,
  }) = _SourceModel;
}

@freezed
class Source with _$Source {
  const factory Source({
    required String id,
    required DateTime createAt,
    required DateTime updateAt,
    required String host,
    required String name,
    required String imgUrl,
    required List<Category> filters,
    required Home home,
  }) = _Source;
}

@freezed
class Category with _$Category {
  const factory Category({
    required String host,
    required String name,
  }) = _Category;
}

@freezed
class Home with _$Home {
  const factory Home({
    required String title,
    required String function,
    required String url,
  }) = _Home;
}
