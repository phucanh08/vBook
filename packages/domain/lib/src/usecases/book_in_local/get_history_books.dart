import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetHistoryBooksUseCase
    extends BasePaginationUseCase<GetHistoryBooksInput, GetHistoryBooksOutput> {
  const GetHistoryBooksUseCase(this.repository);

  final BookInShelfRepository repository;

  @override
  Future<GetHistoryBooksOutput> buildUseCase(GetHistoryBooksInput input) async {
    final result = await repository.getHistoryBooks(input.page);
    return result;
  }
}

class GetHistoryBooksInput extends BasePaginationInput {
  const GetHistoryBooksInput({required super.page});
}

class GetHistoryBooksOutput
    extends BasePaginationOutput<HistoryBookModel> {
  GetHistoryBooksOutput(
      {required super.items, required super.page, required super.total});
}

class HistoryBookModel extends BaseOutput{
  HistoryBookModel({
    required this.id,
    required this.source,
    required this.sourceName,
    required this.name,
    required this.currentChapter,
    required this.currentChapterName,
    required this.lastRead,
  });

  final String id;
  final String source;
  final String sourceName;
  final String name;
  final int currentChapter;
  final String currentChapterName;
  final DateTime lastRead;
}