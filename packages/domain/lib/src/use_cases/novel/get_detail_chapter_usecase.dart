import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetDetailChapterUseCase
    extends BaseFutureUseCase<GetDetailChapterInput, GetDetailChapterOutput> {
  @override
  Future<GetDetailChapterOutput> buildUseCase(GetDetailChapterInput input) async {
    final data = await getIt<NovelRepository>().getDetailChapter(input.sourceId, input.endpoint);

    return GetDetailChapterOutput(data);
  }
}

class GetDetailChapterInput extends BaseInput {
  const GetDetailChapterInput({required this.sourceId, required this.endpoint});
  final String sourceId;
  final String endpoint;
}

class GetDetailChapterOutput extends BaseOutput {
  const GetDetailChapterOutput(this.data);
  final ChapterDetailModel data;
}
