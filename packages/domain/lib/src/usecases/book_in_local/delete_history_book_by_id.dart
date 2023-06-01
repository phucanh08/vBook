import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteHistoryBookByIdUseCase
    extends BaseFutureUseCase<DeleteHistoryBookByIdInput, DeleteHistoryBookByIdOutput> {
  const DeleteHistoryBookByIdUseCase(this.repository);

  final BookInShelfRepository repository;

  @override
  Future<DeleteHistoryBookByIdOutput> buildUseCase(DeleteHistoryBookByIdInput input) async {
    final result = await repository.deleteHistoryBookById(input.id);
    return DeleteHistoryBookByIdOutput(result: result);
  }
}

class DeleteHistoryBookByIdInput extends BaseInput {
  const DeleteHistoryBookByIdInput({required this.id});
  final String id;
}

class DeleteHistoryBookByIdOutput extends BaseOutput {
  const DeleteHistoryBookByIdOutput({required this.result});
  final bool result;
}