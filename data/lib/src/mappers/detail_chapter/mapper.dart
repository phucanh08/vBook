import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../../../data.dart';
import '../../dtos/dtos.dart';

@injectable
class DetailChapterDataMapper extends BaseDataMapper<ChapterDetailDto, ChapterDetailModel> {
  @override
  ChapterDetailModel mapToEntity(ChapterDetailDto? data) {
    return ChapterDetailModel(
      contents: data?.contents ?? [],
      url: data?.url ??'',
    );
  }
}
