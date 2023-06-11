import 'package:data/objectbox.g.dart';
import 'package:data/src/entities/entities.dart';
import 'package:injectable/injectable.dart';

import '../local.dart';

@injectable
class PluginStorage {
  final Box<Plugin> _pluginBox = ObjectBox.pluginBox();

  Future<List<Plugin>> saveAll(List<Plugin> plugins) =>
      _pluginBox.putAndGetManyAsync(plugins);

  Future<int> save(Plugin plugin) => _pluginBox.putAsync(plugin);

  Future<List<Plugin>> getAll() async {
    final query = _pluginBox.query().order(Plugin_.updatedAt).build();
    List<Plugin> result = query.find();
    query.close();

    return result.reversed.toList();
  }

  int removeAll() => _pluginBox.removeAll();

  Future<bool> remove(int id) => _pluginBox.removeAsync(id);
}
