import 'package:freezed_annotation/freezed_annotation.dart';

import 'io.dart';

part 'pagination.freezed.dart';

@freezed
class Page with _$Page {
  const Page._();

  const factory Page({
    @Default(20) int size,
    @Default(0) int number,
  }) = _Page;

  int get offset => size * number;

  bool get isFirst => number == 0;

  Page next() => Page(number: number, size: size);

  Page previous() => isFirst ? this : Page(number: number - 1, size: size);
}

class Pagination<T> extends BasePaginationOutput<T> {
  const Pagination({required super.items, required super.hasNext});
}
