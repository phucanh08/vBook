import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCatalogUseCase
    extends BasePaginationUseCase<GetCatalogInput, Pagination<ChapterModel>> {
  @override
  Future<Pagination<ChapterModel>> buildUseCase(GetCatalogInput input) async {
    final response = await getIt<NovelRepository>().getCatalog(input.id, input.endpoint, input.page);

    return response;
  }
}

class GetCatalogInput extends BasePaginationInput {
  const GetCatalogInput({required this.id, required this.endpoint, required super.page});
  final String id;
  final String endpoint;
}
