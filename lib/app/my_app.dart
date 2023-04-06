import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resource/resource.dart';
import 'package:shared/shared.dart';

import '../app.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends BasePageState<MyApp, AppBloc> {
  final _appRouter = GetIt.instance.get<AppRouter>();

  @override
  bool get isAppWidget => true;

  @override
  void initState() {
    super.initState();
    bloc.add(const AppInitiated());
  }

  @override
  Widget buildPage(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        DeviceConstants.designDeviceWidth,
        DeviceConstants.designDeviceHeight,
      ),
      builder: (context, _) => BlocBuilder<AppBloc, AppState>(
        buildWhen: (previous, current) =>
            previous.themeMode != current.themeMode ||
            previous.languageCode != current.languageCode,
        builder: (context, state) {
          return MaterialApp.router(
            title: 'ProjectConstants.materialAppTitle',
            theme: state.appTheme.lightTheme,
            darkTheme: state.appTheme.darkTheme,
            themeMode: state.themeMode,
            routerDelegate: AutoRouterDelegate.declarative(
              _appRouter,
              routes: (_) => _mapRouteToPageRouteInfo(true),
              navigatorObservers: () => [AppNavigatorObserver()],
            ),
            routeInformationParser: _appRouter.defaultRouteParser(),
            locale: TranslationProvider.of(context).flutterLocale,
            supportedLocales: AppLocaleUtils.supportedLocales,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          );
        },
      ),
    );
  }

  List<PageRouteInfo> _mapRouteToPageRouteInfo(bool isAuthed) {
    return [const HomeRoute()];
    // return isAuthed ? [MainRoute()] : [MainRoute()];
  }
}
