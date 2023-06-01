import 'package:auto_route/auto_route.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../app.dart';

part 'app_router.freezed.dart';

part 'app_router.gr.dart';

@freezed
class AppRouteInfo with _$AppRouteInfo {
  const factory AppRouteInfo.home() = _Home;

  const factory AppRouteInfo.discover() = _Discover;

  const factory AppRouteInfo.community() = _Community;

  const factory AppRouteInfo.individual() = _Individual;
}

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
        AutoRoute(page: DiscoverRoute.page, path: 'discover'),
        AutoRoute(page: CommunityRoute.page, path: 'community'),
        AutoRoute(page: IndividualRoute.page, path: 'individual'),
      ],
    ),
  ];

  @override
  RouteType get defaultRouteType => const RouteType.material();
}

@RoutePage()
class _MainPage extends AutoRouter {}
