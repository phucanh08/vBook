import 'package:injectable/injectable.dart';

import '../../../domain.dart';

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
    required this.novelEndpoint,
    required this.chapterEndpoint,
    required this.currentChapterName,
    this.totalChapters,
    this.currentChapter,
    this.timeRead,
    this.inShelf,
    this.scrollPercent,
  });

  final String sourceId;
  final String novelEndpoint;
  final String chapterEndpoint;
  final String currentChapterName;
  final int? totalChapters;
  final int? currentChapter;
  final int? timeRead;
  final bool? inShelf;
  final double? scrollPercent;
}

class SaveNovelOutput extends BaseOutput {
  const SaveNovelOutput(this.data);

  final bool data;
}
