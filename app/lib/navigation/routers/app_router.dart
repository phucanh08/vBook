import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../../app.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Page|Tab,Route')
class AppRouter extends RootStackRouter {
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
        ),
      ],
    ),
  ];

  @override
  RouteType get defaultRouteType => const RouteType.material();
}

@RoutePage()
class _MainPage extends AutoRouter {}
