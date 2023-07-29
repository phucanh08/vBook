import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetDetailChapterUseCase
    extends BaseFutureUseCase<GetDetailChapterInput, GetDetailChapterOutput> {
  @override
  Future<GetDetailChapterOutput> buildUseCase(GetDetailChapterInput input) async {
    final data = await getIt<NovelRepository>().getDetailChapter(input.sourceId, input.chapterEndpoint);

    return GetDetailChapterOutput(data);
  }
}

class GetDetailChapterInput extends BaseInput {
  const GetDetailChapterInput({required this.sourceId, required this.chapterEndpoint});
  final String sourceId;
  final String chapterEndpoint;
}

class GetDetailChapterOutput extends BaseOutput {
  const GetDetailChapterOutput(this.data);
  final ChapterDetailModel data;
}
