import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../../../data.dart';
import '../../dtos/dtos.dart';

@injectable
class HomeDataMapper extends BaseDataMapper<HomeDto, HomeModel> {
  @override
  HomeModel mapToEntity(HomeDto? data) {
    return HomeModel(title: data?.title ?? '', input: data?.input ?? '');
  }
}
