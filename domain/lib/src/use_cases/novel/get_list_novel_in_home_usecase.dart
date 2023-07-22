import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetListNovelInHomeUseCase extends BasePaginationUseCase<
    GetListNovelInHomeInput, Pagination<NovelItemModel>> {
  @override
  Future<Pagination<NovelItemModel>> buildUseCase(input) async {
    final data = await getIt<NovelRepository>()
        .getListNovelInPage(input.id, input.endpoint, input.page);

    return data;
  }
}

class GetListNovelInHomeInput extends BasePaginationInput {
  GetListNovelInHomeInput({required this.id, required this.endpoint, required super.page});
  final String id;
  final String endpoint;
}
