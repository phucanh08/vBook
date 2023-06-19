import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../../dtos/dtos.dart';

@injectable
class DetailChapterDataMapper extends BaseDataMapper<DetailChapterDto, DetailChapterModel> {
  @override
  DetailChapterModel mapToEntity(DetailChapterDto? data) {
    return DetailChapterModel(
      content: data?.content ?? '',
    );
  }
}
