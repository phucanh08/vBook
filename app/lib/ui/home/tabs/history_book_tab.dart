import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resources/resources.dart';

import '../bloc/home_bloc.dart';

@RoutePage(name: 'HistoryBookTabRouter')
class HistoryBookTab extends StatelessWidget {
  const HistoryBookTab({required this.onItemPressed, super.key});

  final Function(NovelModel novel) onItemPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (prev, cur) => prev.novelInHistory != cur.novelInHistory,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(theme.space.medium),
              child: Text(
                t.home.history.older,
                style: theme.textTheme.titleLarge,
              ),
            ),
            Divider(height: theme.space.none),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final novel = state.novelInHistory[index];

                  return _Item(
                    imageUrl: novel.imgUrl,
                    bookName: novel.name,
                    currentChapter: novel.currentChapter,
                    totalChapter: novel.totalChapters,
                    onPressed: () => onItemPressed.call(novel),
                    currentChapterName: novel.currentChapterName,
                    sourceName: novel.sourceName,
                    scrollPercent: novel.scrollPercent,
                  );
                },
                separatorBuilder: (context, index) =>
                    Divider(height: theme.space.none),
                itemCount: state.novelInHistory.length,
              ),
            ),
          ],
        );
      },
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.imageUrl,
    required this.bookName,
    required this.currentChapter,
    required this.totalChapter,
    required this.onPressed,
    required this.currentChapterName,
    required this.sourceName,
    required this.scrollPercent,
  });

  final String imageUrl;
  final String bookName;
  final String currentChapterName;
  final String sourceName;
  final int currentChapter;
  final int totalChapter;
  final double scrollPercent;
  final Function() onPressed;

  String get percentOfNovel =>
      (((currentChapter - 1) * 100 + scrollPercent) / totalChapter)
          .toStringAsFixed(1);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MaterialButton(
      padding: EdgeInsets.symmetric(
        vertical: theme.space.small,
        horizontal: theme.space.medium,
      ),
      onPressed: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: CachedNetworkImage(imageUrl: imageUrl),
            ),
          ),
          SizedBox(width: theme.space.medium),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bookName,
                  style: theme.textTheme.titleMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  currentChapterName,
                  style: theme.textTheme.bodyMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        sourceName,
                        style: theme.textTheme.bodyMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      '$percentOfNovel%',
                      style: theme.textTheme.bodyMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
