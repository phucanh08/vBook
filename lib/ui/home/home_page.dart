import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resources/resources.dart';

import '../../app.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://antimatter.vn/wp-content/uploads/2022/11/hinh-anh-gai-xinh-trung-quoc.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          centerTitle: false,
          title: TabBar(
            dividerColor: Colors.transparent,
            tabs: [
              Tab(text: t.home.shelf_book),
              Tab(text: t.home.history.title),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FaCodePoint.magnifyingGlass,
                type: IconType.regular,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FaCodePoint.ellipsisStrokeVertical,
                type: IconType.regular,
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Placeholder(),
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      t.home.history.older,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  const Divider(height: 1),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) => MaterialButton(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 10,
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
                            const SizedBox(width: 10),
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
                      separatorBuilder: (context, index) => Divider(height: 1),
                      itemCount: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (index) {
            if(index > 0) {
              GetIt.instance.get<AppNavigator>().replaceAll([AppRouteInfo.main()]);
            }
          },
          destinations: [
            NavigationDestination(
              icon:
                  const FaIcon(FaCodePoint.houseBlank, type: IconType.regular),
              label: t.home.shelf_book,
            ),
            NavigationDestination(
              icon: const FaIcon(FaCodePoint.magnifyingGlass1,
                  type: IconType.light),
              label: t.home.discover,
            ),
            NavigationDestination(
              icon: const FaIcon(FaCodePoint.commentCaptions,
                  type: IconType.light),
              label: t.home.community,
            ),
            NavigationDestination(
              icon: const FaIcon(FaCodePoint.circleUser, type: IconType.light),
              label: t.home.individual,
            ),
          ],
        ),
      ),
    );
  }
}
