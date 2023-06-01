import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteBookInShelfUseCase
    extends BaseFutureUseCase<DeleteBookInShelfInput, DeleteBookInShelfOutput> {
  const DeleteBookInShelfUseCase(this.repository);

  final BookInShelfRepository repository;

  @override
  Future<DeleteBookInShelfOutput> buildUseCase(DeleteBookInShelfInput input) async {
    final result = await repository.delete(input.id);
    return DeleteBookInShelfOutput(result: result);
  }
}

class DeleteBookInShelfInput extends BaseInput {
  const DeleteBookInShelfInput({required this.id});
  final String id;
}

class DeleteBookInShelfOutput extends BaseOutput {
  const DeleteBookInShelfOutput({required this.result});
  final bool result;
}