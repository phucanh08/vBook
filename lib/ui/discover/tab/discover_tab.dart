import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';

import '../../../app.dart';

export 'bloc/discover_tab_bloc.dart';

@RoutePage(name: 'DiscoverTabRoute')
class DiscoverTab extends StatefulWidget {
  const DiscoverTab({
    @PathParam('id') required this.id,
    @PathParam('endpoint') required this.endpoint,
    super.key,
  });

  final String id;
  final String endpoint;

  @override
  State<DiscoverTab> createState() => _DiscoverTabState();
}

class _DiscoverTabState extends BasePageState<DiscoverTab, DiscoverTabBloc> {
  @override
  void initState() {
    bloc.add(
      DiscoverTabEvent.started(id: widget.id, endpoint: widget.endpoint),
    );
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => bloc.paginationRefreshed(),
      child: PaginationBuilder<DiscoverTabBloc, DiscoverTabState, PageModel>(
        successBuilder: (context, state, data) {
          return InfiniteGridView(
            padding: const EdgeInsets.all(10),
            itemCount: data.items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1 / 2,
            ),
            nextData: () => bloc.paginationNextPage(),
            itemBuilder: (context, index) {
              final item = data.items[index];

              return GestureDetector(
                onTap: () => navigator.push<void>(
                  DetailNovelRoute(
                    id: widget.id,
                    endpoint: item.link,
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(child: Card(child: Image.network(item.cover))),
                    Text(
                      '${item.name}\n',
                      style: textTheme.titleSmall,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '${item.description}\n',
                      style: textTheme.labelSmall,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            },
            hasNext: data.hasNext,
          );
        },
        emptyBuilder: (context) => const Placeholder(),
      ),
    );
  }
}
