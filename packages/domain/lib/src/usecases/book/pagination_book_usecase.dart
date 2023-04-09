import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@injectable
class PaginationBookUseCase
    extends BasePaginationUseCase<PaginationBookInput, BookExtension> {
  const PaginationBookUseCase(this.bookRepository);

  final BookRepository bookRepository;

  @protected
  @override
  Future<Pagination<BookExtension>> buildUseCase(PaginationBookInput input) async {
    final result = await bookRepository.getPagination(input.page);
    return result;
  }
}

class PaginationBookInput extends PaginationInput {
  const PaginationBookInput({required super.page});
}
