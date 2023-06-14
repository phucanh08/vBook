import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../../dtos/dtos.dart';

@injectable
class PageDataMapper extends BaseDataMapper<PageDto, PageModel> {
  @override
  PageModel mapToEntity(PageDto? data) {
    return PageModel(
      name: data?.name ?? '',
      link: data?.link ?? '',
      cover: data?.cover ?? '',
      description: data?.description ?? '',
      host: data?.host ?? '',
    );
  }
}
