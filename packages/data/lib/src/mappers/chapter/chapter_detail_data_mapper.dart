import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChapterDetailDataMapper
    extends BaseDataMapper<ChapterDetailDto, ChapterDetail> {
  @override
  ChapterDetail mapToEntity(ChapterDetailDto? data) {
    return ChapterDetail(content: data?.content ?? []);
  }
}
