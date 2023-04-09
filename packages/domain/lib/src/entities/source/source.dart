import 'package:freezed_annotation/freezed_annotation.dart';

part 'source.freezed.dart';

@freezed
class Source with _$Source {
  const factory Source({
    required String id,
    required DateTime createAt,
    required DateTime updateAt,

    required String host,
    required String name,
    required String imgUrl,
    required Filter filter,
    required Home home,
  }) = _Source;
}

@freezed
class Filter with _$Filter {
  const factory Filter({
    required String host,
    required String name,
    required List<Map<String, int>> items,
  }) = _Filter;
}

@freezed
class Home with _$Home {
  const factory Home({
    required String title,
    required String function,
    required String url,
  }) = _Home;
}
