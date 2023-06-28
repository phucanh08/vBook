import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../../../data.dart';
import '../../dtos/dtos.dart';

@injectable
class PageDataMapper extends BaseDataMapper<NovelItemDto, NovelItemModel> {
  @override
  NovelItemModel mapToEntity(NovelItemDto? data) {
    return NovelItemModel(
      name: data?.name ?? '',
      link: data?.link ?? '',
      imgUrl: data?.imgUrl ?? '',
      description: data?.description ?? '',
      host: data?.host ?? '',
    );
  }
}
