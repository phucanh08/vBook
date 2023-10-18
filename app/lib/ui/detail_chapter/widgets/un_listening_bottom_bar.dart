import 'package:flutter/services.dart';
import 'package:resources/resources.dart';

import '../../../app.dart';

class UnListeningBottomBar extends StatelessWidget {
  const UnListeningBottomBar({
    required this.onSpeakButtonPressed,
    required this.visible,
    required this.url,
    required this.title,
    required this.currentChapter,
    required this.totalChapter,
    super.key,
  });

  final void Function() onSpeakButtonPressed;
  final bool visible;
  final String url;
  final String title;
  final int currentChapter;
  final int totalChapter;

  double get percentNovel => currentChapter / totalChapter;

  String get percentNovelText => (percentNovel * 100).toStringAsFixed(2);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Visibility(
      visible: visible,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Material(
          color: theme.colorScheme.surface.withOpacity(0.8),
          child: SafeArea(
            top: false,
            left: false,
            right: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ScrollLoopAutoScroll(
                        duration: const Duration(minutes: 2),
                        scrollDirection: Axis.horizontal,
                        child: Text(
                          '${'$percentNovelText%'} ${title}',
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Clipboard.setData(ClipboardData(text: url)).then((_) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(url)),
                          );
                        });
                      },
                      tooltip: 'Copy',
                      iconSize: 16,
                      splashRadius: 20,
                      padding: EdgeInsets.zero,
                      icon: const FaIcon(
                        FaCodePoint.copy,
                        type: IconType.regular,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      const Text('Trước'),
                      Expanded(
                          child: Slider(
                        value: percentNovel,
                        onChanged: (double value) {},
                      )),
                      const Text('Tiếp'),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FaCodePoint.list,
                          type: IconType.regular,
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FaCodePoint.rotate,
                          type: IconType.regular,
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: onSpeakButtonPressed,
                        icon: const FaIcon(
                          FaCodePoint.headphones,
                          type: IconType.regular,
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FaCodePoint.gear,
                          type: IconType.regular,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
