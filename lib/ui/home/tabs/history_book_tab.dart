
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:resources/resources.dart';

@RoutePage(name: 'HistoryBookTabRouter')
class HistoryBookTab extends StatelessWidget {
  const HistoryBookTab({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Column(
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
              itemBuilder: (context, index) => MaterialButton(
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
                        child: Image.network(
                          'https://static.cdnno.com/poster/nha-ta-nuong-tu-khong-thich-hop/300.jpg?1646044648',
                        ),
                      ),
                    ),
                    SizedBox(width: theme.space.medium),
                    Expanded(
                      flex: 5,
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nhà Ta Nương Tử , Không Thích Hợp',
                            style: theme.textTheme.titleMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Chương 01: Lạc gia con thứ ',
                            style: theme.textTheme.bodyMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Mê Truyện CV',
                                  style: theme.textTheme.bodyMedium,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
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
              ),
              separatorBuilder: (context, index) =>
                  Divider(height: theme.space.none),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
