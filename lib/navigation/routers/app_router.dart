import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../../app.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Page|Tab,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: _MainRoute.page,
      children: [
        RedirectRoute(path: '', redirectTo: 'home'),
        AutoRoute(
          page: HomeRoute.page,
          path: 'home',
          children: [
            RedirectRoute(path: '*', redirectTo: 'bookshelf'),
            AutoRoute(page: BookShelfTabRouter.page, path: 'bookshelf'),
            AutoRoute(page: HistoryBookTabRouter.page, path: 'history'),
          ],
        ),
        AutoRoute(
          page: DiscoverRoute.page,
          path: 'discover',
          children: [
            AutoRoute(page: DiscoverTabRoute.page, path: ':id/:endpoint'),
          ],
        ),
        AutoRoute(page: CommunityRoute.page, path: 'community'),
        AutoRoute(page: IndividualRoute.page, path: 'individual'),
        AutoRoute(
          page: ExtensionRoute.page,
          path: 'extension',
          children: [
            RedirectRoute(path: '*', redirectTo: 'update'),
            AutoRoute(page: UpdateTabRouter.page, path: 'update'),
            AutoRoute(page: LibraryTabRouter.page, path: 'library'),
          ],
        ),
        AutoRoute(page: BrowserRoute.page),
        AutoRoute(page: CatalogRoute.page, path: ':id/:endpoint/catalog'),
        AutoRoute(page: DetailNovelRoute.page, path: ':id/:endpoint/detail-novel'),
        AutoRoute(page: DetailChapterRoute.page, path: ':id/:endpoint/detail-chapter'),
      ],
    ),
  ];

  @override
  RouteType get defaultRouteType => const RouteType.material();
}

@RoutePage()
class _MainPage extends AutoRouter {}
