import 'package:flutter/material.dart';
import 'package:initializer/initializer.dart';
import 'package:resources/resources.dart';

import 'app/app.dart';
import 'config/app_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer(AppConfig.getInstance()).init();
  runApp(TranslationProvider(child: const App()));
}
