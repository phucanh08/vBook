import '../../di/di.dart';
import 'bachngocsach/plugin.dart';
import 'base_api.dart';

Map<String, BaseApi> get getListApi {
  return {
    'bachngocsach': getIt<BachNgocSachApi>(),
  };
}
