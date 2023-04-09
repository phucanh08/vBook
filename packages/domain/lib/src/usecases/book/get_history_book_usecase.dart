import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetHistoryBookUseCase
    extends BasePaginationUseCase<GetHistoryBookInput, BookExtension> {
  const GetHistoryBookUseCase(this.bookRepository);

  final BookRepository bookRepository;

  @override
  Future<Pagination<BookExtension>> buildUseCase(GetHistoryBookInput input) async {
    final result = await bookRepository.getHistoryBook(input.page);
    return result;
  }
}

class GetHistoryBookInput extends PaginationInput {
  const GetHistoryBookInput({required super.page});
}
