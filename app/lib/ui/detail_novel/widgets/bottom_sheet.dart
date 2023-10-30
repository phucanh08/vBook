import 'package:flutter/material.dart';
import 'package:resources/resources.dart';
import 'package:shared/shared.dart';

class DetailNovelBottomSheet extends StatelessWidget {
  const DetailNovelBottomSheet({
    required this.onDownloadButtonPressed,
    required this.onCatalogButtonPressed,
    required this.onAddToShelfButtonPressed,
    super.key,
  });

  final Func0<void> onDownloadButtonPressed;
  final Func0<void> onCatalogButtonPressed;
  final Func0<void> onAddToShelfButtonPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: onDownloadButtonPressed,
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const FaIcon(
                    FaCodePoint.download,
                    type: IconType.regular,
                    size: 20,
                  ),
                  const SizedBox(height: 5),
                  Text(t.common.download),
                ],
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: onCatalogButtonPressed,
              color: theme.colorScheme.primary,
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FaIcon(
                    FaCodePoint.bookOpenCover,
                    type: IconType.regular,
                    color: theme.colorScheme.onPrimary,
                    size: 20,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    t.catalog.title,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: onAddToShelfButtonPressed,
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const FaIcon(
                    FaCodePoint.booksMedical,
                    type: IconType.regular,
                    size: 20,
                  ),
                  const SizedBox(height: 5),
                  Text(t.catalog.add_to_shelf),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
