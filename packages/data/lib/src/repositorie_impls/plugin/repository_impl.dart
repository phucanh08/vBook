import 'package:data/src/mappers/plugin/mapper.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../../sources/vbook_extensions/base_api.dart';
import '../../sources/local/plugin/storage.dart';
import '../../sources/vbook_extensions/plugin.dart';

@Injectable(as: PluginRepository)
class PluginRepositoryImpl extends PluginRepository {
  PluginRepositoryImpl(
    this._storage,
    this._mapper2,
    this._mapper,
  ) : listApi = getListApi.values.toList();

  final PluginStorage _storage;
  final PluginDataMapper _mapper;
  final Plugin2DataMapper _mapper2;
  final List<BaseApi> listApi;

  @override
  Future<List<PluginModel>> getListLocal() async {
    try {
      final list = await _storage.getAll();

      return _mapper2.mapToListData(list);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<PluginModel>> getListLibrary() async {
    try {
      final list = await _storage.getAll();

      final data = await Future.wait(listApi.map((e) => Future.value(e.plugin())));
      final result = data
          .where((element) => !list
              .any((e) => e.name == element.name && e.path == element.path))
          .toList();
      return _mapper.mapToListEntity(result);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<PluginModel> saveLocal(PluginModel model) async {
    try {
      final entity = _mapper2.mapToEntity(model);
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
