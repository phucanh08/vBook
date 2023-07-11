import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetHistoryUseCase
    extends BaseFutureUseCase<GetHistoryInput, GetHistoryOutput> {
  @override
  Future<GetHistoryOutput> buildUseCase(GetHistoryInput input) async {
    // final data = await getIt<NovelRepository>().getHistory();
    final data = List.generate(
      10,
      (index) => NovelModel(
        updatedAt: DateTime.now(),
        name: 'Linh cảnh hành giả',
        path: 'sidj',
        sourceName: 'Mê truyện chữ',
        imgUrl:
        'https://static.cdnno.com/poster/linh-canh-hanh-gia/300.jpg?1648001055',
        totalChapters: 1202,
        currentChapter: 125,
        currentChapterName: 'Chương 125: Linh cảnh mở ra',
        timeRead: 10000,
      ),
    );

    return GetHistoryOutput(data);
  }
}

class GetHistoryInput extends BaseInput {
  const GetHistoryInput();
}

class GetHistoryOutput extends BaseOutput {
  const GetHistoryOutput(this.data);

  final List<NovelModel> data;
}
