import 'package:data/data.dart';
import 'package:domain/domain.dart';

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
