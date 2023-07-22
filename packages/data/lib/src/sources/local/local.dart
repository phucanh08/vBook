import '../../../objectbox.g.dart';
import '../../entities/entities.dart';

class ObjectBox {
  static Store? _store;

  static Future<void> instance() async => _store ??= await openStore();

  static Box<Plugin> pluginBox() => _store!.box<Plugin>();
  static Box<Novel> novelBox() => _store!.box<Novel>();
}
