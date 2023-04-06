import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../app.dart';



part 'app_router.freezed.dart';
part 'app_router.gr.dart';

@freezed
class AppRouteInfo with _$AppRouteInfo {
  const factory AppRouteInfo.main() = _Main;
  const factory AppRouteInfo.home() = _Home;
}

@singleton
@AutoRouterConfig(replaceInRouteName: 'Page|Tab,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: StartRoute.page),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: MainRoute.page, children: [
      AutoRoute(page: BookShelfTabRouter.page),
      AutoRoute(page: DiscoverTabRouter.page),
      AutoRoute(page: CommunityTabRouter.page),
      AutoRoute(page: IndividualTabRouter.page),
    ]),
  ];

  @override
  RouteType get defaultRouteType => const RouteType.material();
}
