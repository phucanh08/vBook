import 'package:flutter/material.dart';

import 'app_navigation/app_navigation.dart';
import 'app_popup_info/app_popup_info.dart';

abstract class PopupInfoMapper {
  Widget map(AppPopupInfo appRouteInfo, AppNavigator navigator);
}
