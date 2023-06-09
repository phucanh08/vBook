import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../../../data.dart';
import '../../dtos/dtos.dart';

@injectable
class ChapterDataMapper extends BaseDataMapper<ChapterDto, ChapterModel> {
  @override
  ChapterModel mapToEntity(ChapterDto? data) {
    return ChapterModel(
      name: data?.name ?? '',
      endpoint: data?.url ?? '',
    );
  }
}
