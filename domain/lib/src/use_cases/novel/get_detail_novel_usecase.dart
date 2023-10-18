import 'package:injectable/injectable.dart';

import '../../../domain.dart';

@injectable
class GetDetailNovelUseCase extends BaseFutureUseCase<GetDetailNovelInput, GetDetailNovelOutput> {
  @override
  Future<GetDetailNovelOutput> buildUseCase(GetDetailNovelInput input) async {
    final data = await getIt<NovelRepository>().getDetailNovel(input.id, input.endpoint);

    return GetDetailNovelOutput(data);
  }
}

class GetDetailNovelInput extends BaseInput {
  const GetDetailNovelInput({required this.id, required this.endpoint});
  final String id;
  final String endpoint;
}

class GetDetailNovelOutput extends BaseOutput {
  const GetDetailNovelOutput(this.data);
  final NovelDetailModel data;
}
