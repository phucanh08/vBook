import 'package:data/src/mappers/plugin/mapper.dart';
import 'package:data/src/sources/remote/plugin/plugin_api.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../../sources/local/plugin/storage.dart';

@Injectable(as: PluginRepository)
class PluginRepositoryImpl extends PluginRepository {
  PluginRepositoryImpl(this._api, this._storage, this._mapper2, this._mapper1, this._mapper);

  final PluginApi _api;
  final PluginStorage _storage;
  final PluginDataMapper _mapper;
  final Plugin1DataMapper _mapper1;
  final Plugin2DataMapper _mapper2;

  @override
  Future<List<PluginModel>> getListLocal() async {
    try {
      final list = await _storage.getAll();

      return _mapper2.mapToListData(list);
    } catch (e, s) {
      throw Exception(e);
    }
  }

  @override
  Future<List<PluginModel>> getListLibrary() async {
    try {
      final list = await _storage.getAll();

      final data = await _api.getList(
          'https://raw.githubusercontent.com/phucanh08/vbook-extensions/master/plugin.json');
      final result = data.where((element) => !list.any((e) => e.name == element.name && e.path == element.path)).toList();
      return _mapper.mapToListEntity(result);
    } catch (e, s) {
      throw Exception(e);
    }
  }

  @override
  Future<PluginModel> saveLocal(PluginModel model) async {
    try {
      final entity = _mapper2.mapToEntity(model);
      await _storage.save(entity);
      return model;
    } catch (e, s) {
      throw Exception(e);
    }
  }

  @override
  Future<bool> removeLocal(int id) {
    return _storage.remove(id);
  }
}
