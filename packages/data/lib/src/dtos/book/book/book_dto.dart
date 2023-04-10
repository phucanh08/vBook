import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_dto.freezed.dart';

@freezed
class BookExtensionDto with _$BookExtensionDto {
  const factory BookExtensionDto({
    required String id,
    String? bookId,
    String? chapId,
    bool? favorite,
    bool? isFirstTime,
    List<String>? viewFlags,
    num? duration,
    DateTime? createAt,
    DateTime? updateAt,
    DateTime? readAt,
    bool? isRemote,
  }) = _BookExtensionDto;
}

@freezed
class BookDto with _$BookDto {
  const factory BookDto({
    required String id,
    String? url, // link truyện
    String? host,
    String? imgUrl, // Link ảnh
    String? title, // Tên sách
    String? description, // Mô tả
    String? author, // Tác giả
    String? status, // Trạng thái của sách "Đang ra", "Full"
    String? detail,
    List<String>? genre, // Thể loại
  }) = _BookDto;
}