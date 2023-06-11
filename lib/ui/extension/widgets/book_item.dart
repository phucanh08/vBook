import 'package:flutter/material.dart';
import 'package:resources/resources.dart';

import '../../widgets/widgets.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    required this.iconUrl,
    required this.trailing,
    required this.name,
    required this.languageCode,
    required this.type,
    required this.source,
    required this.tag,
    super.key,
  });

  final String iconUrl;
  final Widget trailing;
  final String name;
  final String languageCode;
  final String type;
  final String source;
  final String? tag;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: theme.colorScheme.disabledContainer!),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10,10,0,10),
        child: Row(
          children: [
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Image.network(
                iconUrl,
                width: 45,
                height: 45,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomChip(
                        label: '18+',
                        visible: tag == 'nsfw',
                        type: ChipType.error,
                      ),
                      Expanded(
                        child: Text(
                          name,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      CustomChip(
                        label: languageCode,
                        visible: languageCode.isNotEmpty,
                        type: ChipType.info,
                      ),
                      CustomChip(
                        label: type.toUpperCase(),
                        visible: type.isNotEmpty,
                        type: ChipType.success,
                      ),
                      Expanded(
                        child: Text(
                          source,
                          style: theme.textTheme.bodySmall,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            trailing,
          ],
        ),
      ),
    );
  }
}
