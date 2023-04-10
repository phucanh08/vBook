import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetLibraryBookUseCase
    extends BasePaginationUseCase<GetLibraryBookInput, GetLibraryBookOutput> {
  const GetLibraryBookUseCase(this.bookRepository);

  final BookRepository bookRepository;

  @override
  Future<GetLibraryBookOutput> buildUseCase(GetLibraryBookInput input) async {
    final result = await bookRepository.getLibraryBook(input.page);
    return result;
  }
}

class GetLibraryBookInput extends BasePaginationInput {
  const GetLibraryBookInput({required super.page});
}

class GetLibraryBookOutput extends BasePaginationOutput<Output2<BookExtension, Book>> {
  const GetLibraryBookOutput({required super.items, required super.page, required super.total});
}
