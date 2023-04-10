import 'package:data/data.dart';
import 'package:domain/domain.dart';

class BookDataMapper extends BaseDataMapper<BookDto, Book> {
  @override
  Book mapToEntity(BookDto? data) {
    return Book(
      id: data?.id ?? '',
      url: data?.url ?? '',
      host: data?.host ?? '',
      imgUrl: data?.imgUrl ?? '',
      title: data?.title ?? '',
      description: data?.description ?? '',
      author: data?.author ?? '',
      status: data?.status == "Đang ra" ? BookStatus.full: BookStatus.full,
    );
  }
}
