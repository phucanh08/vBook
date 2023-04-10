import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@injectable
class PaginationBookUseCase
    extends BasePaginationUseCase<PaginationBookInput, PaginationBookOutput> {
  const PaginationBookUseCase(this.bookRepository);

  final BookRepository bookRepository;

  @protected
  @override
  Future<PaginationBookOutput> buildUseCase(PaginationBookInput input) async {
    final result = await bookRepository.pagination(input.page);
    return result;
  }
}

class PaginationBookInput extends BasePaginationInput {
  const PaginationBookInput({required super.page});
}

class PaginationBookOutput extends BasePaginationOutput<Output2<BookExtension, Book>> {
  const PaginationBookOutput({required super.page, required super.items, required super.total});
}