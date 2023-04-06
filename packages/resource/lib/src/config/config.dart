import 'package:shared/shared.dart';

import '../../resource.dart';

class ResourceConfig extends Config {
  ResourceConfig._();

  factory ResourceConfig.getInstance() {
    return _instance;
  }

  static final ResourceConfig _instance = ResourceConfig._();

  @override
  Future<void> config() async {
    LocaleSettings.useDeviceLocale();
  }
}