// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    StartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StartPage(),
      );
    },
    MainRoute.name: (routeData) {
      final args =
          routeData.argsAs<MainRouteArgs>(orElse: () => const MainRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MainPage(
          key: args.key,
          title: args.title,
        ),
      );
    },
    DiscoverTabRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DiscoverTab(),
      );
    },
    BookShelfTabRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BookShelfTab(),
      );
    },
    CommunityTabRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CommunityTab(),
      );
    },
    IndividualTabRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IndividualTab(),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StartPage]
class StartRoute extends PageRouteInfo<void> {
  const StartRoute({List<PageRouteInfo>? children})
      : super(
          StartRoute.name,
          initialChildren: children,
        );

  static const String name = 'StartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<MainRouteArgs> {
  MainRoute({
    Key? key,
    String title = 'main',
    List<PageRouteInfo>? children,
  }) : super(
          MainRoute.name,
          args: MainRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<MainRouteArgs> page = PageInfo<MainRouteArgs>(name);
}

class MainRouteArgs {
  const MainRouteArgs({
    this.key,
    this.title = 'main',
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'MainRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [DiscoverTab]
class DiscoverTabRouter extends PageRouteInfo<void> {
  const DiscoverTabRouter({List<PageRouteInfo>? children})
      : super(
          DiscoverTabRouter.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverTabRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BookShelfTab]
class BookShelfTabRouter extends PageRouteInfo<void> {
  const BookShelfTabRouter({List<PageRouteInfo>? children})
      : super(
          BookShelfTabRouter.name,
          initialChildren: children,
        );

  static const String name = 'BookShelfTabRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CommunityTab]
class CommunityTabRouter extends PageRouteInfo<void> {
  const CommunityTabRouter({List<PageRouteInfo>? children})
      : super(
          CommunityTabRouter.name,
          initialChildren: children,
        );

  static const String name = 'CommunityTabRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IndividualTab]
class IndividualTabRouter extends PageRouteInfo<void> {
  const IndividualTabRouter({List<PageRouteInfo>? children})
      : super(
          IndividualTabRouter.name,
          initialChildren: children,
        );

  static const String name = 'IndividualTabRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}
