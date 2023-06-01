import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetBookInLocalStorageUseCase extends BaseFutureUseCase<
    GetBookInLocalStorageInput, GetBookInLocalStorageOutput> {
  const GetBookInLocalStorageUseCase(this.repository);

  final BookInShelfRepository repository;

  @override
  Future<GetBookInLocalStorageOutput> buildUseCase(
      GetBookInLocalStorageInput input) async {
    final result = await repository.getDetailById(input.id);
    return result;
  }
}

class GetBookInLocalStorageInput extends BaseInput {
  const GetBookInLocalStorageInput({required this.id});

  final String id;
}

class GetBookInLocalStorageOutput extends BaseOutput {
  const GetBookInLocalStorageOutput({
    required this.id,
    required this.link,
    required this.imageUrl,
    required this.name,
    required this.author,
    required this.categories,
    required this.description,
  });

  final String id;
  final String link;
  final String imageUrl;
  final String name;
  final String author;
  final List<String> categories;
  final String description;
}
