import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
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

@injectable
class BookExtensionDataMapper
    extends BaseDataMapper<BookExtensionDto, BookExtension> {
  @override
  BookExtension mapToEntity(BookExtensionDto? data) {
    return BookExtension(
      id: data?.id ?? '',
      bookId: data?.bookId ?? '',
      chapId: data?.chapId ?? '',
      favorite: data?.favorite ?? false,
      isFirstTime: data?.isFirstTime ?? true,
      viewFlags: data?.viewFlags ?? [],
      duration: data?.duration ?? 0,
      createAt: data?.createAt ?? DateTime.now(),
      updateAt: data?.updateAt ?? DateTime.now(),
      readAt: data?.readAt ?? DateTime.now(),
      isRemote: data?.isRemote ?? false,
    );
  }
}
