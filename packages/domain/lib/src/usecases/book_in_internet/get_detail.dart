import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetDetailBookInInternetUseCase
    extends BaseFutureUseCase<GetDetailBookInInternetInput, GetDetailBookInInternetOutput> {
  const GetDetailBookInInternetUseCase(this.repository);

  final BookInInternetRepository repository;

  @override
  Future<GetDetailBookInInternetOutput> buildUseCase(GetDetailBookInInternetInput input) async {
    final result = await repository.getDetailById(input.id);
    return result;
  }
}

class GetDetailBookInInternetInput extends BaseInput {
  const GetDetailBookInInternetInput({required this.id});
  final String id;
}

class GetDetailBookInInternetOutput extends BaseOutput {
  const GetDetailBookInInternetOutput({required this.book});
  final Book book;
}