import 'dart:math';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resources/resources.dart';

import '../../../app.dart';
import '../../../di/di.dart';
import '../bloc/detail_chapter_bloc.dart';

class DetailChapterAppBar extends StatelessWidget {
  const DetailChapterAppBar({
    required this.onBookmarkButtonPressed,
    required this.onChangeStatusButtonPressed,
    required this.visible,
    required this.url,
    super.key,
  });

  final void Function() onBookmarkButtonPressed;
  final void Function() onChangeStatusButtonPressed;
  final String url;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final navigator = getIt<AppNavigator>();

    return Visibility(
      visible: visible,
      child: Align(
        alignment: Alignment.topCenter,
        child: Material(
          color: theme.colorScheme.surface.withOpacity(0.8),
          child: SafeArea(
            bottom: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => navigator.pop(),
                      icon: const FaIcon(
                        FaCodePoint.arrowLeft,
                        type: IconType.regular,
                        size: 20,
                      ),
                    ),
                    Row(
                      children: [
                        BlocSelector<DetailChapterBloc, DetailChapterState,
                            bool>(
                          selector: (_state) => _state.bookmarked,
                          builder: (context, bookmarked) {
                            return IconButton(
                              onPressed: onBookmarkButtonPressed,
                              isSelected: bookmarked,
                              icon: const FaIcon(
                                FaCodePoint.bookmark,
                                type: IconType.regular,
                                size: 20,
                              ),
                              selectedIcon: const FaIcon(
                                FaCodePoint.bookmark,
                                type: IconType.solid,
                                size: 20,
                              ),
                            );
                          },
                        ),
                        IconButton(
                          onPressed: onChangeStatusButtonPressed,
                          icon: Transform.rotate(
                            angle: -pi * 3 / 4,
                            child: const FaIcon(
                              FaCodePoint.arrowUpLeftFromCircle,
                              type: IconType.regular,
                              size: 20,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () => null,
                          icon: const FaIcon(
                            FaCodePoint.ellipsisStrokeVertical,
                            type: IconType.regular,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ScrollLoopAutoScroll(
                        duration: const Duration(minutes: 2),
                        scrollDirection: Axis.horizontal,
                        child: Text(
                          url,
                          style: Theme.of(context).textTheme.bodySmall,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class DetailChapterAppbar extends AppBar {
//   DetailChapterAppbar({
//     required void Function() onBookmarkButtonPressed,
//     required void Function()  onChangeStatusButtonPressed,
//     required String url,
//     super.key,
//   }) : super(
//     leading: IconButton(
//       padding: EdgeInsets.zero,
//       onPressed: () => getIt<AppNavigator>().pop(),
//       icon: const FaIcon(
//         FaCodePoint.arrowLeft,
//         type: IconType.regular,
//       ),
//     ),
//     actions: [
//       BlocSelector<DetailChapterBloc, DetailChapterState, bool>(
//         selector: (_state) => _state.bookmarked,
//         builder: (context, bookmarked) {
//           return IconButton(
//             onPressed: onBookmarkButtonPressed,
//             isSelected: bookmarked,
//             icon: const FaIcon(
//               FaCodePoint.bookmark,
//               type: IconType.regular,
//             ),
//             selectedIcon: const FaIcon(
//               FaCodePoint.bookmark,
//               type: IconType.solid,
//             ),
//           );
//         },
//       ),
//       IconButton(
//         onPressed: onChangeStatusButtonPressed,
//         icon: Transform.rotate(
//           angle: -pi * 3 / 4,
//           child: const FaIcon(
//             FaCodePoint.arrowUpLeftFromCircle,
//             type: IconType.regular,
//           ),
//         ),
//       ),
//       IconButton(
//         onPressed: () => null,
//         icon: const FaIcon(
//           FaCodePoint.ellipsisStrokeVertical,
//           type: IconType.regular,
//         ),
//       ),
//     ],
//     bottom: PreferredSize(
//       preferredSize: const Size.fromHeight(30),
//       child: Builder(
//         builder: (context) {
//           return Row(
//             children: [
//               Expanded(
//                 child: ScrollLoopAutoScroll(
//                   duration: const Duration(minutes: 2),
//                   scrollDirection: Axis.horizontal,
//                   child: Text(
//                     url,
//                     style: Theme.of(context).textTheme.bodySmall,
//                   ),
//                 ),
//               ),
//               IconButton(
//                 onPressed: () {
//                   Clipboard.setData(ClipboardData(
//                     text: url,
//                   )).then((_) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text(url)),
//                     );
//                   });
//                 },
//                 tooltip: 'Copy',
//                 iconSize: 16,
//                 splashRadius: 20,
//                 padding: EdgeInsets.zero,
//                 icon: const FaIcon(
//                   FaCodePoint.copy,
//                   type: IconType.regular,
//                 ),
//               ),
//             ],
//           );
//         }
//       ),
//     ),
//   );
// }
