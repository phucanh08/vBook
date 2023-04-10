import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetHistoryBookUseCase
    extends BasePaginationUseCase<GetHistoryBookInput, GetHistoryBookOutput> {
  const GetHistoryBookUseCase(this.bookRepository);

  final BookRepository bookRepository;

  @override
  Future<GetHistoryBookOutput> buildUseCase(GetHistoryBookInput input) async {
    final result = await bookRepository.getHistoryBook(input.page);
    return result;
  }
}

class GetHistoryBookInput extends BasePaginationInput {
  const GetHistoryBookInput({required super.page});
}

class GetHistoryBookOutput extends BasePaginationOutput<Output2<BookExtension, Book>> {
  GetHistoryBookOutput({required super.items, required super.page, required super.total});
}