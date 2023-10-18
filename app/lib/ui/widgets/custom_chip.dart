import 'package:flutter/material.dart';
import 'package:resources/resources.dart';

enum ChipType { info, success, error }

class CustomChip extends StatelessWidget {
  const CustomChip({
    required this.label,
    required this.type,
    this.visible = true,
    super.key,
  });

  final String label;
  final bool visible;
  final ChipType type;

  Color textColor(ColorScheme colorScheme) {
    switch (type) {
      case ChipType.info:
        return colorScheme.onInfoContainer!;
      case ChipType.success:
        return colorScheme.onSuccessContainer!;
      case ChipType.error:
        return colorScheme.onErrorContainer;
    }
  }

  Color outlineColor(ColorScheme colorScheme) => textColor(colorScheme).withOpacity(0.5);

  Color backgroundColor(ColorScheme colorScheme) {
    switch (type) {
      case ChipType.info:
        return colorScheme.infoContainer!;
      case ChipType.success:
        return colorScheme.successContainer!;
      case ChipType.error:
        return colorScheme.errorContainer;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Visibility(
      visible: visible,
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: outlineColor(theme.colorScheme)),
          color: backgroundColor(theme.colorScheme),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          child: Text(
            label,
            style: theme.textTheme.labelSmall?.copyWith(
              color: textColor(theme.colorScheme),
            ),
          ),
        ),
      ),
    );
  }
}
