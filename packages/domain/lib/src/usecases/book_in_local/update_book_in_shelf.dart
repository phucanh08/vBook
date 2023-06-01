import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateBookInShelfUseCase
    extends BaseFutureUseCase<UpdateBookInShelfInput, UpdateBookInShelfOutput> {
  const UpdateBookInShelfUseCase(this.repository);

  final BookInShelfRepository repository;

  @override
  Future<UpdateBookInShelfOutput> buildUseCase(UpdateBookInShelfInput input) async {
    final result = await repository.update(input);
    return result;
  }
}

class UpdateBookInShelfInput extends BaseInput {
  const UpdateBookInShelfInput({required this.book});
  final Book book;
}

class UpdateBookInShelfOutput extends BaseOutput {
  const UpdateBookInShelfOutput({required this.book});
  final Book book;
}