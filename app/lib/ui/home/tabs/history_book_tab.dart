import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resources/resources.dart';

import '../bloc/home_bloc.dart';

@RoutePage(name: 'HistoryBookTabRouter')
class HistoryBookTab extends StatelessWidget {
  const HistoryBookTab({super.key});

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

                  return MaterialButton(
                    padding: EdgeInsets.symmetric(
                      vertical: theme.space.small,
                      horizontal: theme.space.medium,
                    ),
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: CachedNetworkImage(imageUrl: novel.imgUrl),
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
                                novel.name,
                                style: theme.textTheme.titleMedium,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                novel.currentChapterName,
                                style: theme.textTheme.bodyMedium,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      novel.sourceName,
                                      style: theme.textTheme.bodyMedium,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                    ///todo: check later
                                    '1 tuần',
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
