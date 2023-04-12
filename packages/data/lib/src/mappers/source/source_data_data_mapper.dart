import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class SourceDataMapper extends BaseDataMapper<SourceDto, Source> {
  @override
  Source mapToEntity(SourceDto? data) {
    final filterDataMapper = FilterDataMapper();
    final homeDataMapper = HomeDataMapper();

    return Source(
      id: data?.id ?? '',
      createAt: data?.createAt ?? DateTime.now(),
      updateAt: data?.updateAt ?? DateTime.now(),
      host: data?.host ?? '',
      name: data?.name ?? '',
      imgUrl: data?.imgUrl ?? '',
      filters: data?.filters?.map((e) => filterDataMapper.mapToEntity(e)).toList() ?? [],
      home: homeDataMapper.mapToEntity(data?.home),
    );
  }
}

class FilterDataMapper extends BaseDataMapper<FilterDto, Filter> {
  @override
  Filter mapToEntity(FilterDto? data) {
    return Filter(
      host: data?.host ?? '',
      name: data?.name ?? '',
      items: data?.items ?? [],
    );
  }
}

class HomeDataMapper extends BaseDataMapper<HomeDto, Home> {
  @override
  Home mapToEntity(HomeDto? data) {
    return Home(
      title: data?.title ?? '',
      function: data?.function ?? '',
      url: data?.url ?? '',
    );
  }
}
