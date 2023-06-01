import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetBooksInShelfUseCase
    extends BasePaginationUseCase<GetBooksInShelfInput, GetBooksInShelfOutput> {
  const GetBooksInShelfUseCase(this.repository);

  final BookInShelfRepository repository;

  @override
  Future<GetBooksInShelfOutput> buildUseCase(GetBooksInShelfInput input) async {
    final result = await repository.getBooksInShelf(input.page);
    return result;
  }
}

class GetBooksInShelfInput extends BasePaginationInput {
  const GetBooksInShelfInput({required super.page});
}

class GetBooksInShelfOutput
    extends BasePaginationOutput<BookInShelfModel> {
  GetBooksInShelfOutput(
      {required super.items, required super.page, required super.total});
}

class BookInShelfModel extends BaseOutput {
  BookInShelfModel({
    required this.id,
    required this.source,
    required this.sourceName,
    required this.name,
    required this.currentChapter,
    required this.currentChapterName,
    required this.totalChapters,
    required this.timeRead,
  });

  final String id;
  final String source;
  final String sourceName;
  final String name;
  final int currentChapter;
  final String currentChapterName;
  final int totalChapters;
  final int timeRead;
}
