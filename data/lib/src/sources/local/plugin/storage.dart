import 'package:injectable/injectable.dart';

import '../../../../objectbox.g.dart';
import '../../../entities/entities.dart';
import '../local.dart';

@injectable
class PluginStorage {
  PluginStorage(@Named('LocalStorage') ObjectBox objectBox) : pluginBox = objectBox.pluginBox();
  final Box<Plugin> pluginBox;

  Future<List<Plugin>> saveAll(List<Plugin> plugins) => pluginBox.putAndGetManyAsync(plugins);

  Future<int> save(Plugin plugin) => pluginBox.putAsync(plugin);

  Future<List<Plugin>> getAll() async {
    final query = pluginBox.query().order(Plugin_.updatedAt).build();
    final result = query.find();
    query.close();

    return result.reversed.toList();
  }

  int removeAll() => pluginBox.removeAll();

  Future<bool> remove(int id) => pluginBox.removeAsync(id);
}
