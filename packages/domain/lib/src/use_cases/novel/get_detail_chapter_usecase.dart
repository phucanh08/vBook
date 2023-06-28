import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetDetailChapterUseCase
    extends BaseFutureUseCase<GetDetailChapterInput, GetDetailChapterOutput> {
  @override
  Future<GetDetailChapterOutput> buildUseCase(GetDetailChapterInput input) async {
    final data = await getIt<NovelRepository>().getDetailChapter(input.id, input.endpoint);

    return GetDetailChapterOutput(data);
  }
}

class GetDetailChapterInput extends BaseInput {
  const GetDetailChapterInput({required this.id, required this.endpoint});
  final String id;
  final String endpoint;
}

class GetDetailChapterOutput extends BaseOutput {
  const GetDetailChapterOutput(this.data);
  final ChapterDetailModel data;
}
