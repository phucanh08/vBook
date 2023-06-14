import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetListNovelInHomeUseCase extends BasePaginationUseCase<
    GetListNovelInHomeInput, Pagination<PageModel>> {
  @override
  Future<Pagination<PageModel>> buildUseCase(input) async {
    final data = await getIt<NovelRepository>()
        .getListNovelInPage(input.id, input.endpoint, input.page);

    return data;
  }
}

class GetListNovelInHomeInput extends BasePaginationInput {
  GetListNovelInHomeInput(this.id, {required this.endpoint, required super.page});
  final String id;
  final String endpoint;
}

class GetListNovelInHomeOutput extends BaseOutput {
  const GetListNovelInHomeOutput(this.data);

  final List<PageModel> data;
}
