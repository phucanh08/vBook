import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../../dtos/dtos.dart';
import '../../entities/entities.dart';

@injectable
class PluginDataMapper extends BaseDataMapper<PluginDto, PluginModel> {
  @override
  PluginModel mapToEntity(PluginDto? data) {
    return PluginModel(
      id: 0,
      name: data?.name ?? '',
      author: data?.author ?? '',
      path: data?.path ?? '',
      version: data?.version?.toInt() ?? 0,
      source: data?.source ?? '',
      icon: data?.icon ?? '',
      description: data?.description ?? '',
      type: data?.type ?? '',
      locale: data?.locale ?? '',
      tag: data?.tag ?? '',
    );
  }
}

@injectable
class Plugin1DataMapper extends BaseDataMapper<PluginDto, Plugin> {
  @override
  Plugin mapToEntity(PluginDto? data) {
    return Plugin(
      updatedAt: DateTime.now().millisecondsSinceEpoch,
      name: data?.name ?? '',
      author: data?.author ?? '',
      path: data?.path ?? '',
      version: data?.version?.toInt() ?? 0,
      source: data?.source ?? '',
      icon: data?.icon ?? '',
      description: data?.description ?? '',
      type: data?.type ?? '',
      locale: data?.locale ?? '',
      tag: data?.tag ?? '',
    );
  }
}

@injectable
class Plugin2DataMapper extends BaseDataMapper<PluginModel, Plugin> with DataMapperMixin<PluginModel, Plugin> {
  @override
  Plugin mapToEntity(PluginModel? data) {
    return Plugin(
      id: data?.id ?? 0,
      name: data?.name ?? '',
      author: data?.author ?? '',
      path: data?.path ?? '',
      version: data?.version.toInt() ?? 0,
      source: data?.source ?? '',
      icon: data?.icon ?? '',
      description: data?.description ?? '',
      type: data?.type ?? '',
      locale: data?.locale ?? '',
      tag: data?.tag ?? '',
      updatedAt: DateTime.now().millisecondsSinceEpoch,
    );
  }

  @override
  PluginModel mapToData(Plugin entity) {
    return PluginModel(
      id: entity.id,
      name: entity.name,
      author: entity.author,
      path: entity.path,
      version: entity.version.toInt(),
      source: entity.source,
      icon: entity.icon,
      description: entity.description,
      type: entity.type,
      locale: entity.locale,
      tag: entity.tag,
    );
  }
}
