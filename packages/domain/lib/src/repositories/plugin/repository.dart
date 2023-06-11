import 'package:domain/domain.dart';

abstract class PluginRepository {
  Future<List<PluginModel>> getListLibrary();
  Future<List<PluginModel>> getListLocal();
  Future<PluginModel> saveLocal(PluginModel model);
  Future<bool> removeLocal(int id);
}