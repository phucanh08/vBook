import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:resources/resources.dart';
import 'package:shared/shared.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    super.title,
    Widget? leading,
    List<Widget>? actions,
    Func0<void>? onSearchButtonPressed,
    Func0<void>? onMoreButtonPressed,
    Func0<void>? onPlusButtonPressed,
    bool automaticallyImplyLeading = true,
    super.key,
  })  : assert(!(actions != null &&
            (onSearchButtonPressed != null || onMoreButtonPressed != null))),
        super(
          centerTitle: false,
          automaticallyImplyLeading: false,
          titleSpacing: -10,
          leading: leading ??
              Visibility(
                visible: automaticallyImplyLeading,
                child: AutoLeadingButton(
                  builder: (context, leadingType, action) {
                    return IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => action?.call(),
                      icon: const FaIcon(
                        FaCodePoint.arrowLeft,
                        type: IconType.regular,
                      ),
                    );
                  },
                ),
              ),
          actions: actions ??
              [
                Visibility(
                  visible: onSearchButtonPressed != null,
                  child: IconButton(
                    onPressed: () => onSearchButtonPressed?.call(),
                    icon: const FaIcon(
                      FaCodePoint.magnifyingGlass,
                      type: IconType.regular,
                    ),
                  ),
                ),
                Visibility(
                  visible: onMoreButtonPressed != null,
                  child: IconButton(
                    onPressed: () => onMoreButtonPressed?.call(),
                    icon: const FaIcon(
                      FaCodePoint.ellipsisStrokeVertical,
                      type: IconType.regular,
                    ),
                  ),
                ),
                Visibility(
                  visible: onPlusButtonPressed != null,
                  child: IconButton(
                    onPressed: () => onPlusButtonPressed?.call(),
                    icon: const FaIcon(
                      FaCodePoint.plus,
                      type: IconType.regular,
                    ),
                  ),
                ),
              ],
        );
}
