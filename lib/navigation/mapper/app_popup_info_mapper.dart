import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

import '../../app.dart';

abstract class BasePopupInfoMapper {
  Widget map(AppPopupInfo appRouteInfo, AppNavigator navigator);
}

@LazySingleton(as: BasePopupInfoMapper)
class AppPopupInfoMapper extends BasePopupInfoMapper {
  @override
  Widget map(AppPopupInfo appPopupInfo, AppNavigator navigator) {
    return appPopupInfo.when(
      confirmDialog: (message, onPressed) {
        return CommonDialog(
          actions: [
            PopupButton(
              text: 'S.current.ok',
              onPressed: onPressed ?? Func0(() => navigator.pop()),
            ),
          ],
          message: message,
        );
      },
      errorWithRetryDialog: (message, onRetryPressed) {
        return CommonDialog(
          actions: [
            PopupButton(
              // text: S.current.cancel,
              onPressed: Func0(() => navigator.pop()),
            ),
            PopupButton(
              // text: S.current.retry,
              onPressed: onRetryPressed ?? Func0(() => navigator.pop()),
              isDefault: true,
            ),
          ],
          message: message,
        );
      },
    );
  }
}
