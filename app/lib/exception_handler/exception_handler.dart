import 'package:get_it/get_it.dart';
import 'package:resources/resources.dart';
import 'package:shared/shared.dart';

import '../app.dart';

part 'exception_message_mapper.dart';

class ExceptionHandler {
  const ExceptionHandler();

  Future<void> handleException(
    AppExceptionWrapper appExceptionWrapper,
    String commonExceptionMessage,
  ) async {
    final navigator = GetIt.instance.get<AppNavigator>();

    final message =
        appExceptionWrapper.overrideMessage ?? commonExceptionMessage;

    switch (appExceptionWrapper.appException.appExceptionType) {
      case AppExceptionType.remote:
        final exception = appExceptionWrapper.appException as RemoteException;
        switch (exception.kind) {
          case RemoteExceptionKind.refreshTokenFailed:
            await _showErrorDialog(
              isRefreshTokenFailed: true,
              message: message,
              onPressed: () {
                navigator.pop();
              },
            );
            break;
          case RemoteExceptionKind.noInternet:
          case RemoteExceptionKind.timeout:
            await _showErrorDialogWithRetry(
              message: message,
              onRetryPressed: () async {
                await navigator.pop();
                await appExceptionWrapper.doOnRetry?.call();
              },
            );
            break;
          default:
            await _showErrorDialog(message: message);
            break;
        }
        break;
      case AppExceptionType.parse:
        return _showErrorSnackBar(message: message);
      case AppExceptionType.remoteConfig:
        return _showErrorSnackBar(message: message);
      case AppExceptionType.uncaught:
        return null;
      case AppExceptionType.validation:
        await _showErrorDialog(message: message);
        break;
    }
  }

  void _showErrorSnackBar({
    required String message,
    Duration duration = DurationConstants.defaultErrorVisibleDuration,
  }) {
    final navigator = GetIt.instance.get<AppNavigator>();

    navigator.showSnackBar(message, duration: duration);
  }

  Future<void> _showErrorDialog({
    required String message,
    Func0<void>? onPressed,
    bool isRefreshTokenFailed = false,
  }) async {
    final navigator = GetIt.instance.get<AppNavigator>();

    await navigator
        .showDialog(CommonDialog.confirmDialog(
      message: message,
      onPressed: onPressed,
    ))
        .then((value) {
      if (isRefreshTokenFailed) {
        // TODO(anhlp): Cập nhật logic khi refresh token lỗi
      }
    });
  }

  Future<void> _showErrorDialogWithRetry({
    required String message,
    required Func0<void>? onRetryPressed,
  }) async {
    final navigator = GetIt.instance.get<AppNavigator>();

    await navigator.showDialog(CommonDialog.errorWithRetryDialog(
      message: message,
      onRetryPressed: onRetryPressed,
    ));
  }
}
