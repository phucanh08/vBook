import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetBooksInInternetUseCase
    extends BasePaginationUseCase<GetBooksInInternetInput, GetBooksInInternetOutput> {
  const GetBooksInInternetUseCase(this.repository);

  final BookInInternetRepository repository;

  @override
  Future<GetBooksInInternetOutput> buildUseCase(GetBooksInInternetInput input) async {
    final result = await repository.getList(input);
    return result;
  }
}

class GetBooksInInternetInput extends BasePaginationInput {
  const GetBooksInInternetInput({required super.page});
}

class GetBooksInInternetOutput extends BasePaginationOutput<Output2<BookExtension, Book>> {
  GetBooksInInternetOutput({required super.items, required super.page, required super.total});
}