import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resources/resources.dart';
import 'package:shared/shared.dart';

import '../app.dart';

export 'bloc/app_bloc.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends BasePageState<App, AppBloc> {
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
            builder: (context, child) {
              final data = MediaQuery.of(context);

              return MediaQuery(
                data: data.copyWith(textScaleFactor: 0.95),
                child: child ?? const SizedBox.shrink(),
              );
            },
            routerDelegate: AutoRouterDelegate.declarative(
              _appRouter,
              routes: (_) => _mapRouteToPageRouteInfo(true),
              navigatorObservers: () => [AppNavigatorObserver()],
            ),
            routeInformationParser: _appRouter.defaultRouteParser(),
            title: UiConstants.materialAppTitle,
            // color: UiConstants.taskMenuMaterialAppColor,
            themeMode: state.themeMode,
            theme: state.appTheme.lightTheme,
            darkTheme: state.appTheme.darkTheme,
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
