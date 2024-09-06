import 'dart:async';

import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../../mappers/plugin/mapper.dart';
import '../../sources/local/plugin/storage.dart';
import '../../sources/vbook_extensions/base_api.dart';

@Injectable(as: PluginRepository)
class PluginRepositoryImpl extends PluginRepository {
  PluginRepositoryImpl(
    this._storage,
    this.vBookApi,
  );

  final PluginStorage _storage;
  final VBookApi vBookApi;

  @override
  Future<List<PluginModel>> getListLocal() async {
    try {
      final list = await _storage.getAll();

      return getIt<Plugin2DataMapper>().mapToListData(list);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<PluginModel>> getListLibrary() async {
    try {
      final listData = await _storage.getAll();
      final data = await vBookApi.getAllPlugin();
      final result = data
          .where((element) => !listData
              .any((e) => e.name == element.name && e.path == element.path))
          .toList();

      return getIt<PluginDataMapper>().mapToListEntity(result);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<PluginModel> saveLocal(PluginModel model) async {
    try {
      final entity = getIt<Plugin2DataMapper>().mapToEntity(model);
      await _storage.save(entity);

      return model;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<bool> removeLocal(int id) {
    return _storage.remove(id);
  }
}
