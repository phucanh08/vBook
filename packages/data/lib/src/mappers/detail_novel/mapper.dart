import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../../dtos/dtos.dart';

@injectable
class DetailNovelDataMapper extends BaseDataMapper<DetailNovelDto, DetailNovelModel> {
  @override
  DetailNovelModel mapToEntity(DetailNovelDto? data) {
    return DetailNovelModel(
      name: data?.name ?? '',
      cover: data?.cover ?? '',
      description: data?.description ?? '',
      host: data?.host ?? '',
      author: data?.author ?? '',
      detail: data?.detail ?? '',
    );
  }
}
