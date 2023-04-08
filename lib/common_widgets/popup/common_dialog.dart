import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resources/resources.dart';

import '../../app.dart';

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
              onPressed: e.onPressed?.function,
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
                onPressed: e.onPressed?.function,
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
