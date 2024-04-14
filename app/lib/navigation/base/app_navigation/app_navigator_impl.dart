part of 'app_navigation.dart';

@LazySingleton(as: AppNavigator)
class AppNavigatorImpl extends AppNavigator with LogMixin {
  AppNavigatorImpl() : appRouter = getIt<AppRouter>();

  StackRouter appRouter;

  m.BuildContext get _context => appRouter.navigatorKey.currentContext!;

  @override
  Future<bool> pop<T extends Object?>({T? result}) {
    if (LogConfig.enableNavigatorObserverLog) {
      if (LogConfig.enableNavigatorObserverLog) {
        logD('pop with result = $result');
      }
    }

    return appRouter.maybePop<T>(result);
  }

  @override
  Future<T?> push<T extends Object?>(PageRouteInfo<T> appRouteInfo) {
    if (LogConfig.enableNavigatorObserverLog) {
      logD('push $appRouteInfo');
    }

    return appRouter.push<T>(appRouteInfo);
  }

  @override
  Future<T?> replace<T extends Object?>(
    PageRouteInfo route, {
    OnNavigationFailure? onFailure,
  }) {
    if (LogConfig.enableNavigatorObserverLog) {
      logD(
        'replace $route with result = $onFailure',
      );
    }

    return appRouter.replace<T>(route, onFailure: onFailure);
  }

  @override
  Future<T?> popAndPush<T extends Object?, R extends Object?>(
    PageRouteInfo<T> appRouteInfo, {
    R? result,
  }) {
    if (LogConfig.enableNavigatorObserverLog) {
      logD(
        'popAndPush $appRouteInfo with result = $result',
      );
    }

    return appRouter.popAndPush<T, R>(appRouteInfo, result: result);
  }

  @override
  void popUntilRoot() {
    if (LogConfig.enableNavigatorObserverLog) {
      logD('popUntilRoot');
    }

    return appRouter.popUntilRoot();
  }

  @override
  Future<T?> showDialog<T>(
    m.Widget dialog, {
    bool barrierDismissible = true,
    m.Color? barrierColor = m.Colors.black54,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    m.RouteSettings? routeSettings,
    m.Offset? anchorPoint,
    m.TraversalEdgeBehavior? traversalEdgeBehavior,
  }) {
    if (LogConfig.enableNavigatorObserverLog) {
      logD('showDialog: $dialog');
    }

    return m.showDialog<T>(
      context: _context,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      anchorPoint: anchorPoint,
      traversalEdgeBehavior: traversalEdgeBehavior,
      builder: (context) => dialog,
    );
  }

  @override
  void showSnackBar(
    String message, {
    Duration? duration,
    m.Color? backgroundColor,
  }) {
    if (LogConfig.enableNavigatorObserverLog) {
      logD('showSnackBar: $message');
    }

    return ViewUtils.showAppSnackBar(
      _context,
      message,
      duration: duration,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Future<T?> showModalBottomSheet<T>(
    m.Widget bottomSheet, {
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    Color? barrierColor,
    bool isScrollControlled = false,
    bool useRootNavigator = false,
    bool isDismissible = true,
    bool enableDrag = true,
    bool? showDragHandle,
    bool useSafeArea = false,
    RouteSettings? routeSettings,
    AnimationController? transitionAnimationController,
    Offset? anchorPoint,
  }) {
    if (LogConfig.enableNavigatorObserverLog) {
      logD('showModalBottomSheet: $bottomSheet');
    }

    return m.showModalBottomSheet<T>(
      context: _context,
      builder: (context) => bottomSheet,
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      constraints: constraints,
      barrierColor: barrierColor,
      isScrollControlled: isScrollControlled,
      useRootNavigator: useRootNavigator,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      showDragHandle: showDragHandle,
      useSafeArea: useSafeArea,
      routeSettings: routeSettings,
      transitionAnimationController: transitionAnimationController,
      anchorPoint: anchorPoint,
    );
  }
}

// @LazySingleton(as: AppNavigator)
// class AppNavigatorImpl extends AppNavigator with LogMixin {
//   AppNavigatorImpl(): _navigatorKey = GlobalKey<NavigatorState>();
//
//   final GlobalKey<NavigatorState> _navigatorKey;
//
//   GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;
//
//   NavigatorState? get navigator => _navigatorKey.currentState;
//
//   @override
//   Future<T?> push<T extends Object?>(AppRouteInfo appRouteInfo) {
//     if (LogConfig.enableNavigatorObserverLog) {
//       logD('push $appRouteInfo');
//     }
//
//
//     return navigator!.push<T>(_appRouteInfoMapper.map(appRouteInfo));
//   }
//
//   @override
//   Future<void> pushAll(List<AppRouteInfo> listAppRouteInfo) {
//     if (LogConfig.enableNavigatorObserverLog) {
//       logD('pushAll $listAppRouteInfo');
//     }
//
//     return _appRouter.pushAll(_appRouteInfoMapper.mapList(listAppRouteInfo));
//   }
//
//   @override
//   Future<T?> replace<T extends Object?>(AppRouteInfo appRouteInfo) {
//     if (LogConfig.enableNavigatorObserverLog) {
//       logD('replace by $appRouteInfo');
//     }
//
//     return _appRouter.replace<T>(_appRouteInfoMapper.map(appRouteInfo));
//   }
//
//   @override
//   Future<void> replaceAll(List<AppRouteInfo> listAppRouteInfo) {
//     if (LogConfig.enableNavigatorObserverLog) {
//       logD('replaceAll by $listAppRouteInfo');
//     }
//
//     return _appRouter.replaceAll(_appRouteInfoMapper.mapList(listAppRouteInfo));
//   }
//
//   @override
//   Future<bool> pop<T extends Object?>({T? result}) {
//     if (LogConfig.enableNavigatorObserverLog) {
//       logD('pop with result = $result');
//     }
//
//     return _rootRouterContext.router.pop<T>(result);
//   }
//
//   @override
//   Future<T?> popAndPush<T extends Object?, R extends Object?>(
//     AppRouteInfo appRouteInfo, {
//     R? result,
//     bool useRootNavigator = false,
//   }) {
//     if (LogConfig.enableNavigatorObserverLog) {
//       logD(
//         'popAndPush $appRouteInfo with result = $result, useRootNav = $useRootNavigator',
//       );
//     }
//
//     return useRootNavigator
//         ? _appRouter.popAndPush<T, R>(
//             _appRouteInfoMapper.map(appRouteInfo),
//             result: result,
//           )
//         : _currentTabRouterOrRootRouter.popAndPush<T, R>(
//             _appRouteInfoMapper.map(appRouteInfo),
//             result: result,
//           );
//   }
//
//   @override
//   void popUntilRoot({bool useRootNavigator = false}) {
//     if (LogConfig.enableNavigatorObserverLog) {
//       logD('popUntilRoot, useRootNav = $useRootNavigator');
//     }
//
//     useRootNavigator
//         ? _appRouter.popUntilRoot()
//         : _currentTabRouterOrRootRouter.popUntilRoot();
//   }
//
//   @override
//   void popUntilRouteName(String routeName) {
//     if (LogConfig.enableNavigatorObserverLog) {
//       logD('popUntilRouteName $routeName');
//     }
//
//     _appRouter.popUntilRouteWithName(routeName);
//   }
//
//   @override
//   bool removeUntilRouteName(String routeName) {
//     if (LogConfig.enableNavigatorObserverLog) {
//       logD('removeUntilRouteName $routeName');
//     }
//
//     return _appRouter.removeUntil((route) => route.name == routeName);
//   }
//
//   @override
//   bool removeAllRoutesWithName(String routeName) {
//     if (LogConfig.enableNavigatorObserverLog) {
//       logD('removeAllRoutesWithName $routeName');
//     }
//
//     return _appRouter.removeWhere((route) => route.name == routeName);
//   }
//
//   @override
//   Future<void> popAndPushAll(
//     List<AppRouteInfo> listAppRouteInfo, {
//     bool useRootNavigator = false,
//   }) {
//     if (LogConfig.enableNavigatorObserverLog) {
//       logD('popAndPushAll $listAppRouteInfo, useRootNav = $useRootNavigator');
//     }
//
//     return useRootNavigator
//         ? _appRouter
//             .popAndPushAll(_appRouteInfoMapper.mapList(listAppRouteInfo))
//         : _currentTabRouterOrRootRouter
//             .popAndPushAll(_appRouteInfoMapper.mapList(listAppRouteInfo));
//   }
//
//   @override
//   bool removeLast() {
//     if (LogConfig.enableNavigatorObserverLog) {
//       logD('removeLast');
//     }
//
//     return _appRouter.removeLast();
//   }
//
//   @override
//   Future<T?> showDialog<T extends Object?>(
//     AppPopupInfo appPopupInfo, {
//     bool barrierDismissible = true,
//     bool useSafeArea = false,
//     bool useRootNavigator = true,
//   }) {
//     if (_popups.contains(appPopupInfo)) {
//       logD('Dialog $appPopupInfo already shown');
//
//       return Future.value(null);
//     }
//     _popups.add(appPopupInfo);
//
//     return m.showDialog<T>(
//       context: useRootNavigator
//           ? _rootRouterContext
//           : _currentTabContextOrRootContext,
//       builder: (_) => m.WillPopScope(
//         onWillPop: () async {
//           logD('Dialog $appPopupInfo dismissed');
//           _popups.remove(appPopupInfo);
//
//           return Future.value(true);
//         },
//         child: _appPopupInfoMapper.map(appPopupInfo, this),
//       ),
//       useRootNavigator: useRootNavigator,
//       barrierDismissible: barrierDismissible,
//       useSafeArea: useSafeArea,
//     );
//   }
//
//   @override
//   Future<T?> showGeneralDialog<T extends Object?>(
//     AppPopupInfo appPopupInfo, {
//     Duration transitionDuration =
//         DurationConstants.defaultGeneralDialogTransitionDuration,
//     m.Widget Function(
//       m.BuildContext,
//       m.Animation<double>,
//       m.Animation<double>,
//       m.Widget,
//     )? transitionBuilder,
//     m.Color barrierColor = const m.Color(0x80000000),
//     bool barrierDismissible = true,
//     bool useRootNavigator = true,
//   }) {
//     if (_popups.contains(appPopupInfo)) {
//       logD('Dialog $appPopupInfo already shown');
//
//       return Future.value(null);
//     }
//     _popups.add(appPopupInfo);
//
//     return m.showGeneralDialog<T>(
//       context: useRootNavigator
//           ? _rootRouterContext
//           : _currentTabContextOrRootContext,
//       barrierColor: barrierColor,
//       useRootNavigator: useRootNavigator,
//       barrierDismissible: barrierDismissible,
//       pageBuilder: (
//         m.BuildContext context,
//         m.Animation<double> animation1,
//         m.Animation<double> animation2,
//       ) =>
//           m.WillPopScope(
//         onWillPop: () async {
//           logD('Dialog $appPopupInfo dismissed');
//           _popups.remove(appPopupInfo);
//
//           return Future.value(true);
//         },
//         child: _appPopupInfoMapper.map(appPopupInfo, this),
//       ),
//       transitionBuilder: transitionBuilder,
//       transitionDuration: transitionDuration,
//     );
//   }
//
//   @override
//   Future<T?> showModalBottomSheet<T extends Object?>(
//     AppPopupInfo appPopupInfo, {
//     bool isScrollControlled = false,
//     bool useRootNavigator = false,
//     bool isDismissible = true,
//     bool enableDrag = true,
//     bool safeArea = true,
//     m.Color barrierColor = m.Colors.black54,
//     m.Color? backgroundColor,
//   }) {
//     if (LogConfig.enableNavigatorObserverLog) {
//       logD(
//         'showModalBottomSheet $appPopupInfo, useRootNav = $useRootNavigator',
//       );
//     }
//
//     return m.showModalBottomSheet<T>(
//       context: useRootNavigator
//           ? _rootRouterContext
//           : _currentTabContextOrRootContext,
//       builder: (_) => _appPopupInfoMapper.map(appPopupInfo, this),
//       isDismissible: isDismissible,
//       enableDrag: enableDrag,
//       useRootNavigator: useRootNavigator,
//       isScrollControlled: isScrollControlled,
//       backgroundColor: backgroundColor,
//       barrierColor: barrierColor,
//       elevation: 0,
//       useSafeArea: safeArea,
//     );
//   }
//
//   @override
//   void showErrorSnackBar(String message, {Duration? duration}) {
//     ViewUtils.showAppSnackBar(
//       _rootRouterContext,
//       message,
//       duration: duration,
//       // backgroundColor: AppColors.current.primaryColor,
//     );
//   }
//
//   @override
//   void showSuccessSnackBar(String message, {Duration? duration}) {
//     ViewUtils.showAppSnackBar(
//       _rootRouterContext,
//       message,
//       duration: duration,
//       // backgroundColor: AppColors.current.primaryColor,
//     );
//   }
// }
