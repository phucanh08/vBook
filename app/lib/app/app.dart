import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resources/resources.dart';
import 'package:shared/shared.dart';

import '../app.dart';

export 'bloc/app_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimen.of(context);
    AppTheme.of(context);

    return BlocProvider(
      create: (context) => GetIt.instance.get<AppBloc>(),
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRouter = GetIt.instance.get<AppRouter>();

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
                data: data.copyWith(textScaler: TextScaler.linear(0.95.sp)),
                child: child ?? const SizedBox.shrink(),
              );
            },
            routerConfig: _appRouter.config(
              navigatorObservers: () => [AppNavigatorObserver()],
            ),
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
}
