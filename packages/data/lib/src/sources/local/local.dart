import 'package:data/objectbox.g.dart';
import 'package:data/src/entities/entities.dart';

class ObjectBox {
  static Store? _store;

  static Future<void> instance() async => _store ??= await openStore();

  static Box<Plugin> pluginBox() => _store!.box<Plugin>();
}
