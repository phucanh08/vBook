import '../../../objectbox.g.dart';
import '../../entities/entities.dart';

class ObjectBox {
  ObjectBox() {
    openStore().then((value) => _store = value);
  }

  late final Store _store;

  Box<Plugin> pluginBox() => _store.box<Plugin>();

  Box<Novel> novelBox() => _store.box<Novel>();
}
