import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetLibraryBookUseCase
    extends BasePaginationUseCase<GetLibraryBookInput, BookExtension> {
  const GetLibraryBookUseCase(this.bookRepository);

  final BookRepository bookRepository;

  @override
  Future<Pagination<BookExtension>> buildUseCase(GetLibraryBookInput input) async {
    final result = await bookRepository.getLibraryBook(input.page);
    return result;
  }
}

class GetLibraryBookInput extends PaginationInput {
  const GetLibraryBookInput({required super.page});
}
