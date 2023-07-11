import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetShelfUseCase extends BaseFutureUseCase<GetShelfInput, GetShelfOutput> {
  @override
  Future<GetShelfOutput> buildUseCase(GetShelfInput input) async {
    // final data = await getIt<NovelRepository>().getShelf();
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

    return GetShelfOutput(data);
  }
}

class GetShelfInput extends BaseInput {
  const GetShelfInput();
}

class GetShelfOutput extends BaseOutput {
  const GetShelfOutput(this.data);

  final List<NovelModel> data;
}
