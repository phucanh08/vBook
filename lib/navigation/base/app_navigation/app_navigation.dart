import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' as m;
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

import '../../mapper/app_popup_info_mapper.dart';
import '../../mapper/app_route_info_mapper.dart';
import '../../routers/app_router.dart';
import '../app_popup_info/app_popup_info.dart';

part 'app_navigator_impl.dart';

abstract class AppNavigator {
  const AppNavigator();

  bool get canPopSelfOrChildren;

  int get currentBottomTab;

  String getCurrentRouteName({bool useRootNavigator = false});

  void popUntilRootOfCurrentBottomTab();

  void navigateToBottomTab(int index, {bool notify = true});

  Future<T?> push<T extends Object?>(AppRouteInfo appRoute);

  Future<void> pushAll(List<AppRouteInfo> listAppRoute);

  Future<T?> replace<T extends Object?>(AppRouteInfo appRoute);

  Future<void> replaceAll(List<AppRouteInfo> listAppRoute);

  Future<bool> pop<T extends Object?>({
    T? result,
    bool useRootNavigator = false,
  });

  Future<T?> popAndPush<T extends Object?, R extends Object?>(
      AppRouteInfo appRoute, {
    R? result,
    bool useRootNavigator = false,
  });

  Future<void> popAndPushAll(List<AppRouteInfo> listAppRoute,
      {bool useRootNavigator = false,});

  void popUntilRoot({bool useRootNavigator = false});

  void popUntilRouteName(String routeName);

  bool removeUntilRouteName(String routeName);

  bool removeAllRoutesWithName(String routeName);

  bool removeLast();

  Future<T?> showDialog<T extends Object?>(
      AppPopupInfo appPopupInfo, {
        bool barrierDismissible = true,
        bool useSafeArea = false,
        bool useRootNavigator = true,
      });

  Future<T?> showGeneralDialog<T extends Object?>(
      AppPopupInfo appPopupInfo, {
        m.Widget Function(m.BuildContext, m.Animation<double>, m.Animation<double>, m.Widget)? transitionBuilder,
        Duration transitionDuration = DurationConstants.defaultGeneralDialogTransitionDuration,
        bool barrierDismissible = true,
        m.Color barrierColor = const m.Color(0x80000000),
        bool useRootNavigator = true,
      });

  Future<T?> showModalBottomSheet<T extends Object?>(
      AppPopupInfo appPopupInfo, {
        bool isScrollControlled = false,
        bool useRootNavigator = false,
        bool isDismissible = true,
        bool enableDrag = true,
        m.Color barrierColor = m.Colors.black54,
        m.Color? backgroundColor,
      });

  void showErrorSnackBar(String message, {Duration? duration});

  void showSuccessSnackBar(String message, {Duration? duration});
}
