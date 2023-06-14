import 'package:injectable/injectable.dart';
import 'package:resources/resources.dart';

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
              text: t.common.ok,
              onPressed: onPressed ?? () => navigator.pop(),
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
              onPressed: () => navigator.pop(),
            ),
            PopupButton(
              // text: S.current.retry,
              onPressed: onRetryPressed ?? () => navigator.pop(),
              isDefault: true,
            ),
          ],
          message: message,
        );
      },
      chooseSourceBottomSheet: (listPlugin) =>
          ChooseSourceBottomSheet(listPlugin),
    );
  }
}
