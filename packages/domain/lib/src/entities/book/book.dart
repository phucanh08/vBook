import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';

@freezed
class BookExtension with _$BookExtension {
  const factory BookExtension({
    required String id,
    required Book book,
    required String chapId,
    required bool favorite,
    required bool isFirstTime,
    required List<String> viewFlags,
    required num duration,
    required DateTime createAt,
    required DateTime updateAt,
    required DateTime readAt,
    required bool isRemote,
  }) = _BookExtension;
}

@freezed
class Book with _$Book {
  const factory Book({
    required String id,
    required String url, // link truyện
    required String host,
    required String imgUrl, // Link ảnh
    required String title, // Tên sách
    required String description, // Mô tả
    required String author, // Tác giả
    required BookStatus status, // Trạng thái của sách "Đang ra", "Full"
    String? detail,
    List<String>? genre, // Thể loại
  }) = _Book;
}

enum BookStatus { coming, full }
