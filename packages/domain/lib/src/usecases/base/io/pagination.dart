import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain.dart';

part 'pagination.freezed.dart';

@freezed
class Pagination<T> extends BaseOutput with _$Pagination<T> {
  const Pagination._();

  const factory Pagination({
    required List<T> items,
    required Page page,
    @Default(0) int total,
  }) = _Pagination;
}



@freezed
class Page with _$Page {
  const Page._();

  const factory Page({
    @Default(20) int size,
    @Default(1) int number,
  }) = _Page;

  int get offset => size * number;

  bool get isFirst => number == 1;

  Page next() => Page(number: number + 1, size: size);

  Page previous() => isFirst ? this : Page(number: number - 1, size: size);
}
