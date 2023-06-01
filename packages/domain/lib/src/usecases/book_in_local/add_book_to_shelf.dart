import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddBookToShelfUseCase
    extends BaseFutureUseCase<AddBookToShelfInput, AddBookToShelfOutput> {
  const AddBookToShelfUseCase(this.repository);

  final BookInShelfRepository repository;

  @override
  Future<AddBookToShelfOutput> buildUseCase(AddBookToShelfInput input) async {
    final result = await repository.addBookToShelf(input);
    return result;
  }
}

class AddBookToShelfInput extends BaseInput {
  const AddBookToShelfInput({required this.book});
  final Book book;
}

class AddBookToShelfOutput extends BaseOutput {
  const AddBookToShelfOutput({required this.book});
  final Book book;
}