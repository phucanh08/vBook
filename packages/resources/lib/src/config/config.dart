import 'package:shared/shared.dart';

import '../../resources.dart';

class ResourcesConfig extends Config {
  ResourcesConfig._();

  factory ResourcesConfig.getInstance() {
    return _instance;
  }

  static final ResourcesConfig _instance = ResourcesConfig._();

  @override
  Future<void> config() async {
    LocaleSettings.useDeviceLocale();
  }
}
