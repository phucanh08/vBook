// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DetailNovelRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DetailNovelRouteArgs>(
          orElse: () => DetailNovelRouteArgs(
                id: pathParams.getString('id'),
                endpoint: pathParams.getString('endpoint'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetailNovelPage(
          id: args.id,
          endpoint: args.endpoint,
          key: args.key,
        ),
      );
    },
    BookShelfTabRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BookShelfTab(),
      );
    },
    HistoryBookTabRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HistoryBookTab(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    DetailChapterRoute.name: (routeData) {
      final args = routeData.argsAs<DetailChapterRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetailChapterPage(
          id: args.id,
          endpoint: args.endpoint,
          novelEndpoint: args.novelEndpoint,
          title: args.title,
          key: args.key,
        ),
      );
    },
    DiscoverTabRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DiscoverTabRouteArgs>(
          orElse: () => DiscoverTabRouteArgs(
                id: pathParams.getString('id'),
                endpoint: pathParams.getString('endpoint'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DiscoverTab(
          id: args.id,
          endpoint: args.endpoint,
          key: args.key,
        ),
      );
    },
    DiscoverRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DiscoverPage(),
      );
    },
    LibraryTabRouter.name: (routeData) {
      final args = routeData.argsAs<LibraryTabRouterArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LibraryTab(
          bloc: args.bloc,
          key: args.key,
        ),
      );
    },
    UpdateTabRouter.name: (routeData) {
      final args = routeData.argsAs<UpdateTabRouterArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UpdateTab(
          bloc: args.bloc,
          key: args.key,
        ),
      );
    },
    ExtensionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ExtensionPage(),
      );
    },
    CatalogRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CatalogPage(
          id: args.id,
          endpoint: args.endpoint,
          title: args.title,
          key: args.key,
        ),
      );
    },
    BrowserRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BrowserPage(),
      );
    },
    CommunityRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CommunityPage(),
      );
    },
    IndividualRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IndividualPage(),
      );
    },
    _MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _MainPage(),
      );
    },
  };
}

/// generated route for
/// [DetailNovelPage]
class DetailNovelRoute extends PageRouteInfo<DetailNovelRouteArgs> {
  DetailNovelRoute({
    required String id,
    required String endpoint,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          DetailNovelRoute.name,
          args: DetailNovelRouteArgs(
            id: id,
            endpoint: endpoint,
            key: key,
          ),
          rawPathParams: {
            'id': id,
            'endpoint': endpoint,
          },
          initialChildren: children,
        );

  static const String name = 'DetailNovelRoute';

  static const PageInfo<DetailNovelRouteArgs> page =
      PageInfo<DetailNovelRouteArgs>(name);
}

class DetailNovelRouteArgs {
  const DetailNovelRouteArgs({
    required this.id,
    required this.endpoint,
    this.key,
  });

  final String id;

  final String endpoint;

  final Key? key;

  @override
  String toString() {
    return 'DetailNovelRouteArgs{id: $id, endpoint: $endpoint, key: $key}';
  }
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
/// [HistoryBookTab]
class HistoryBookTabRouter extends PageRouteInfo<void> {
  const HistoryBookTabRouter({List<PageRouteInfo>? children})
      : super(
          HistoryBookTabRouter.name,
          initialChildren: children,
        );

  static const String name = 'HistoryBookTabRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [DetailChapterPage]
class DetailChapterRoute extends PageRouteInfo<DetailChapterRouteArgs> {
  DetailChapterRoute({
    required String id,
    required String endpoint,
    required String novelEndpoint,
    required String title,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          DetailChapterRoute.name,
          args: DetailChapterRouteArgs(
            id: id,
            endpoint: endpoint,
            novelEndpoint: novelEndpoint,
            title: title,
            key: key,
          ),
          rawPathParams: {
            'id': id,
            'endpoint': endpoint,
          },
          initialChildren: children,
        );

  static const String name = 'DetailChapterRoute';

  static const PageInfo<DetailChapterRouteArgs> page =
      PageInfo<DetailChapterRouteArgs>(name);
}

class DetailChapterRouteArgs {
  const DetailChapterRouteArgs({
    required this.id,
    required this.endpoint,
    required this.novelEndpoint,
    required this.title,
    this.key,
  });

  final String id;

  final String endpoint;

  final String novelEndpoint;

  final String title;

  final Key? key;

  @override
  String toString() {
    return 'DetailChapterRouteArgs{id: $id, endpoint: $endpoint, novelEndpoint: $novelEndpoint, title: $title, key: $key}';
  }
}

/// generated route for
/// [DiscoverTab]
class DiscoverTabRoute extends PageRouteInfo<DiscoverTabRouteArgs> {
  DiscoverTabRoute({
    required String id,
    required String endpoint,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          DiscoverTabRoute.name,
          args: DiscoverTabRouteArgs(
            id: id,
            endpoint: endpoint,
            key: key,
          ),
          rawPathParams: {
            'id': id,
            'endpoint': endpoint,
          },
          initialChildren: children,
        );

  static const String name = 'DiscoverTabRoute';

  static const PageInfo<DiscoverTabRouteArgs> page =
      PageInfo<DiscoverTabRouteArgs>(name);
}

class DiscoverTabRouteArgs {
  const DiscoverTabRouteArgs({
    required this.id,
    required this.endpoint,
    this.key,
  });

  final String id;

  final String endpoint;

  final Key? key;

  @override
  String toString() {
    return 'DiscoverTabRouteArgs{id: $id, endpoint: $endpoint, key: $key}';
  }
}

/// generated route for
/// [DiscoverPage]
class DiscoverRoute extends PageRouteInfo<void> {
  const DiscoverRoute({List<PageRouteInfo>? children})
      : super(
          DiscoverRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LibraryTab]
class LibraryTabRouter extends PageRouteInfo<LibraryTabRouterArgs> {
  LibraryTabRouter({
    required ExtensionBloc bloc,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LibraryTabRouter.name,
          args: LibraryTabRouterArgs(
            bloc: bloc,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'LibraryTabRouter';

  static const PageInfo<LibraryTabRouterArgs> page =
      PageInfo<LibraryTabRouterArgs>(name);
}

class LibraryTabRouterArgs {
  const LibraryTabRouterArgs({
    required this.bloc,
    this.key,
  });

  final ExtensionBloc bloc;

  final Key? key;

  @override
  String toString() {
    return 'LibraryTabRouterArgs{bloc: $bloc, key: $key}';
  }
}

/// generated route for
/// [UpdateTab]
class UpdateTabRouter extends PageRouteInfo<UpdateTabRouterArgs> {
  UpdateTabRouter({
    required ExtensionBloc bloc,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UpdateTabRouter.name,
          args: UpdateTabRouterArgs(
            bloc: bloc,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'UpdateTabRouter';

  static const PageInfo<UpdateTabRouterArgs> page =
      PageInfo<UpdateTabRouterArgs>(name);
}

class UpdateTabRouterArgs {
  const UpdateTabRouterArgs({
    required this.bloc,
    this.key,
  });

  final ExtensionBloc bloc;

  final Key? key;

  @override
  String toString() {
    return 'UpdateTabRouterArgs{bloc: $bloc, key: $key}';
  }
}

/// generated route for
/// [ExtensionPage]
class ExtensionRoute extends PageRouteInfo<void> {
  const ExtensionRoute({List<PageRouteInfo>? children})
      : super(
          ExtensionRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExtensionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CatalogPage]
class CatalogRoute extends PageRouteInfo<CatalogRouteArgs> {
  CatalogRoute({
    required String id,
    required String endpoint,
    required String title,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogRoute.name,
          args: CatalogRouteArgs(
            id: id,
            endpoint: endpoint,
            title: title,
            key: key,
          ),
          rawPathParams: {
            'id': id,
            'endpoint': endpoint,
          },
          initialChildren: children,
        );

  static const String name = 'CatalogRoute';

  static const PageInfo<CatalogRouteArgs> page =
      PageInfo<CatalogRouteArgs>(name);
}

class CatalogRouteArgs {
  const CatalogRouteArgs({
    required this.id,
    required this.endpoint,
    required this.title,
    this.key,
  });

  final String id;

  final String endpoint;

  final String title;

  final Key? key;

  @override
  String toString() {
    return 'CatalogRouteArgs{id: $id, endpoint: $endpoint, title: $title, key: $key}';
  }
}

/// generated route for
/// [BrowserPage]
class BrowserRoute extends PageRouteInfo<void> {
  const BrowserRoute({List<PageRouteInfo>? children})
      : super(
          BrowserRoute.name,
          initialChildren: children,
        );

  static const String name = 'BrowserRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CommunityPage]
class CommunityRoute extends PageRouteInfo<void> {
  const CommunityRoute({List<PageRouteInfo>? children})
      : super(
          CommunityRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IndividualPage]
class IndividualRoute extends PageRouteInfo<void> {
  const IndividualRoute({List<PageRouteInfo>? children})
      : super(
          IndividualRoute.name,
          initialChildren: children,
        );

  static const String name = 'IndividualRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [_MainPage]
class _MainRoute extends PageRouteInfo<void> {
  const _MainRoute({List<PageRouteInfo>? children})
      : super(
          _MainRoute.name,
          initialChildren: children,
        );

  static const String name = '_MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
