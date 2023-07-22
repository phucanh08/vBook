import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveNovelUseCase
    extends BaseFutureUseCase<SaveNovelInput, SaveNovelOutput> {
  @override
  Future<SaveNovelOutput> buildUseCase(SaveNovelInput input) async {
    final data = await getIt<NovelRepository>().save(input);

    return SaveNovelOutput(data);
  }
}

class SaveNovelInput extends BaseInput {
  const SaveNovelInput({
    required this.sourceId,
    required this.endpoint,
    required this.novelEndpoint,
    required this.currentChapterName,
    required this.totalChapters,
    required this.currentChapter,
    this.timeRead,
    this.inShelf,
  });

  final String sourceId;
  final String endpoint;
  final String novelEndpoint;
  final String currentChapterName;
  final int totalChapters;
  final int currentChapter;
  final int? timeRead;
  final bool? inShelf;
}

class SaveNovelOutput extends BaseOutput {
  const SaveNovelOutput(this.data);

  final bool data;
}
