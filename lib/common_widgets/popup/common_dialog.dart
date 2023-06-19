import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:resources/resources.dart';
import 'package:shared/shared.dart';

import '../../app.dart';

class CommonDialog extends StatelessWidget {
  factory CommonDialog.confirmDialog({
    required String message,
    Func0<void>? onPressed,
  }) {
    return CommonDialog._(
      actions: [
        PopupButton(
          text: t.common.ok,
          onPressed: onPressed ?? () => appNavigator.pop(),
        ),
      ],
      message: message,
    );
  }

  factory CommonDialog.errorWithRetryDialog({
    required String message,
    Func0<void>? onRetryPressed,
  }) {
    return CommonDialog._(
      actions: [
        PopupButton(
          // text: S.current.cancel,
          onPressed: () => appNavigator.pop(),
        ),
        PopupButton(
          // text: S.current.retry,
          onPressed: onRetryPressed ?? () => appNavigator.pop(),
          isDefault: true,
        ),
      ],
      message: message,
    );
  }

  const CommonDialog._({
    this.commonPopupType = PopupType.adaptive,
    this.actions = const <PopupButton>[],
    this.title,
    this.message,
    Key? key,
  }) : super(key: key);

  const CommonDialog.android({
    List<PopupButton> actions = const <PopupButton>[],
    String? title,
    String? message,
    Key? key,
  }) : this._(
          commonPopupType: PopupType.android,
          actions: actions,
          title: title,
          message: message,
          key: key,
        );

  const CommonDialog.ios({
    List<PopupButton> actions = const <PopupButton>[],
    String? title,
    String? message,
    Key? key,
  }) : this._(
          commonPopupType: PopupType.ios,
          actions: actions,
          title: title,
          message: message,
          key: key,
        );

  const CommonDialog.adaptive({
    List<PopupButton> actions = const <PopupButton>[],
    String? title,
    String? message,
    Key? key,
  }) : this._(
          commonPopupType: PopupType.adaptive,
          actions: actions,
          title: title,
          message: message,
          key: key,
        );

  final PopupType commonPopupType;
  final List<PopupButton> actions;
  final String? title;
  final String? message;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    switch (commonPopupType) {
      case PopupType.android:
        return _buildAndroidDialog(textTheme, colorScheme);
      case PopupType.ios:
        return _buildIosDialog(textTheme, colorScheme);
      case PopupType.adaptive:
        return Platform.isIOS
            ? _buildIosDialog(textTheme, colorScheme)
            : _buildAndroidDialog(textTheme, colorScheme);
    }
  }

  Widget _buildAndroidDialog(TextTheme textTheme, ColorScheme colorScheme) {
    return AlertDialog(
      actions: actions
          .map(
            (e) => TextButton(
              onPressed: e.onPressed,
              child: Text(
                e.text ?? t.common.ok,
                style: textTheme.bodyMedium?.withColor(
                  color:
                      e.isDefault ? colorScheme.primary : colorScheme.secondary,
                ),
              ),
            ),
          )
          .toList(growable: false),
      title: title != null
          ? Text(
              title!,
              style:
                  textTheme.bodyMedium?.withColor(color: colorScheme.primary),
            )
          : null,
      content: message != null
          ? Text(
              message!,
              style:
                  textTheme.bodyMedium?.withColor(color: colorScheme.primary),
            )
          : null,
    );
  }

  Widget _buildIosDialog(TextTheme textTheme, ColorScheme colorScheme) {
    return CupertinoAlertDialog(
      actions: actions
          .map((e) => CupertinoDialogAction(
                onPressed: e.onPressed,
                child: Text(
                  e.text ?? t.common.ok,
                  style: textTheme.bodyMedium?.withColor(
                    color: e.isDefault
                        ? colorScheme.primary
                        : colorScheme.secondary,
                  ),
                ),
              ))
          .toList(growable: false),
      title: title != null
          ? Text(
              title!,
              style:
                  textTheme.bodyMedium?.withColor(color: colorScheme.primary),
            )
          : null,
      content: message != null
          ? Text(
              message!,
              style:
                  textTheme.bodyMedium?.withColor(color: colorScheme.primary),
            )
          : null,
    );
  }
}
