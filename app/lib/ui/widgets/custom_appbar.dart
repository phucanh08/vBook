import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:resources/resources.dart';
import 'package:shared/shared.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    super.title,
    super.titleSpacing = 0,
    super.bottom,
    super.toolbarHeight,
    Widget? leading,
    List<Widget>? actions,
    Func0<void>? onSearchButtonPressed,
    Func0<void>? onMoreButtonPressed,
    Func1<Offset, void>? onPlusButtonPressed,
    bool automaticallyImplyLeading = true,
    super.key,
  })  : assert(!(actions != null &&
            (onSearchButtonPressed != null || onMoreButtonPressed != null))),
        super(
          centerTitle: false,
          automaticallyImplyLeading: false,
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
                        size: 20,
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
                      size: 20,
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
                      size: 20,
                    ),
                  ),
                ),
                Visibility(
                  visible: onPlusButtonPressed != null,
                  child: Builder(builder: (context) {
                    return IconButton(
                      onPressed: () {
                        final RenderBox renderbox =
                        context.findRenderObject() as RenderBox;
                        final Offset position = renderbox.localToGlobal(Offset.zero);
                        final double x = position.dx;
                        final double y = position.dy;
                        final double width = renderbox.size.width;
                        final double height = renderbox.size.height;

                        onPlusButtonPressed
                            ?.call(Offset(x + width, y + height));
                      },
                      icon: const FaIcon(
                        FaCodePoint.plus,
                        type: IconType.regular,
                        size: 20,
                      ),
                    );
                  }),
                ),
              ],
        );

  CustomAppBar.search({
    required ValueChanged<String> onChanged,
    required TextEditingController controller,
    required Func0<void> onCloseConfirmed,
    super.key,
  }) : super(
          leading: const FaIcon(
            FaCodePoint.magnifyingGlass,
            type: IconType.regular,
            size: 20,
          ),
          titleSpacing: -10,
          title: TextField(
            controller: controller,
            onChanged: onChanged,
            autofocus: true,
          ),
          actions: [
            IconButton(
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  controller.clear();
                  onChanged.call(controller.text);
                } else {
                  onCloseConfirmed.call();
                }
              },
              padding: EdgeInsets.zero,
              icon: const FaIcon(
                FaCodePoint.xMark,
                type: IconType.regular,
              ),
            ),
          ],
        );
}
