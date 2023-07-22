import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../../../data.dart';
import '../../dtos/dtos.dart';

@injectable
class DetailNovelDataMapper extends BaseDataMapper<NovelDetailDto, NovelDetailModel> {
  @override
  NovelDetailModel mapToEntity(NovelDetailDto? data) {
    return NovelDetailModel(
      name: data?.name ?? '',
      imgUrl: data?.imgUrl ?? '',
      description: data?.description ?? '',
      host: data?.host ?? '',
      author: data?.author ?? '',
      detail: data?.detail ?? '',
    );
  }
}
