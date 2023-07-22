import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' as m;
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

import '../../../app.dart';

part 'app_navigator_impl.dart';

abstract class AppNavigator {
  const AppNavigator();

  Future<T?> push<T extends Object?>(PageRouteInfo<T> pageRouteInfo);

  Future<bool> pop<T extends Object?>({T? result});

  Future<T?> replace<T extends Object?>(
    PageRouteInfo route, {
    OnNavigationFailure? onFailure,
  });

  Future<T?> popAndPush<T extends Object?, R extends Object?>(
    PageRouteInfo<T> pageRouteInfo, {
    R? result,
  });

  void popUntilRoot();

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
  });

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
  });

  void showSnackBar(
    String message, {
    Duration? duration,
    Color? backgroundColor,
  });
}

AppNavigator? _appNavigator;

AppNavigator get appNavigator => _appNavigator ??= GetIt.I.get<AppNavigator>();
