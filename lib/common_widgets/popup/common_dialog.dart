import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resource/resource.dart';

import '../../app.dart';
import 'popup_button.dart';
import 'popup_type.dart';

class CommonDialog extends StatelessWidget {
  const CommonDialog({
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
  }) : this(
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
  }) : this(
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
  }) : this(
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

    switch (commonPopupType) {
      case PopupType.android:
        return _buildAndroidDialog(textTheme);
      case PopupType.ios:
        return _buildIosDialog(textTheme);
      case PopupType.adaptive:
        return Platform.isIOS
            ? _buildIosDialog(textTheme)
            : _buildAndroidDialog(textTheme);
    }
  }

  Widget _buildAndroidDialog(TextTheme textTheme) {
    return AlertDialog(
      actions: actions
          .map(
            (e) => TextButton(
              onPressed: e.onPressed?.function,
              child: Text(
                e.text ?? 'S.current.ok',
                style: e.isDefault
                    ? textTheme.bodyMedium
                    : textTheme.bodyMedium,
              ),
            ),
          )
          .toList(growable: false),
      title: title != null
          ? Text(
              title ?? '',
              style: textTheme.bodyMedium,
            )
          : null,
      content: message != null
          ? Text(
              message ?? '',
              style: textTheme.bodyMedium,
            )
          : null,
    );
  }

  Widget _buildIosDialog(TextTheme textTheme) {
    return CupertinoAlertDialog(
      actions: actions
          .map((e) => CupertinoDialogAction(
                onPressed: e.onPressed?.function,
                child: Text(
                  e.text ?? 'S.current.ok',
                  style: e.isDefault
                      ? textTheme.bodyMedium
                      : textTheme.bodyMedium,
                ),
              ))
          .toList(growable: false),
      title: title != null
          ? Text(
              title ?? '',
              style: textTheme.bodyMedium,
            )
          : null,
      content: message != null
          ? Text(
              message ?? '',
              style: textTheme.bodyMedium,
            )
          : null,
    );
  }
}
