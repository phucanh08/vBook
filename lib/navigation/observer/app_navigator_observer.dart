import 'package:auto_route/auto_route.dart';
import 'package:shared/shared.dart';

class AppNavigatorObserver extends AutoRouterObserver with LogMixin {
  AppNavigatorObserver();

  static const _enableLog = LogConfig.enableNavigatorObserverLog;

  @override
  void didPush(route, previousRoute) {
    super.didPush(route, previousRoute);
    if (_enableLog) {
      logD('didPush from ${previousRoute?.settings.name} to ${route.settings.name}');
    }
  }

  @override
  void didPop(route, previousRoute) {
    super.didPop(route, previousRoute);
    if (_enableLog) {
      logD('didPop ${route.settings.name}, back to ${previousRoute?.settings.name}');
    }
  }

  @override
  void didRemove(route, previousRoute) {
    super.didRemove(route, previousRoute);
    if (_enableLog) {
      logD('didRemove ${route.settings.name}, back to ${previousRoute?.settings.name}');
    }
  }

  @override
  void didReplace({newRoute, oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (_enableLog) {
      logD('didReplace ${oldRoute?.settings.name} by ${newRoute?.settings.name}');
    }
  }

  @override
  void didStartUserGesture(route, previousRoute) {
    super.didStartUserGesture(route, previousRoute);
  }

  @override
  void didStopUserGesture() {
    super.didStopUserGesture();
  }
}
