import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class Home with _$Home {
  const Home._();
  const factory Home({
    required String title,
    required String input,
    required String script,
  }) = _Home;
}

@freezed
class Genre with _$Genre {
  const Genre._();
  const factory Genre({
    required String title,
    required String input,
    required String script,
  }) = _Genre;
}

@freezed
class Detail with _$Detail {
  const Detail._();
  const factory Detail({
    required String name,
    required String cover,
    required String host,
    required String author,
    required String description,
    required String detail,
  }) = _Detail;
}


@freezed
class Book with _$Book {
  const Book._();
  const factory Book({
    required String name,
    required String link,
    required String cover,
    required String description,
    required String host,
  }) = _Book;
}


@freezed
class Toc with _$Toc {
  const Toc._();
  const factory Toc({
    required String name,
    required String url,
    required String host,
  }) = _Toc;
}

@freezed
class Chap with _$Chap {
  const Chap._();
  const factory Chap({
    required List<String> data,
  }) = _Chap;
}
