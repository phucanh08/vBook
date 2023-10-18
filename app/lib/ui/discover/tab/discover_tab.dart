import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shared/shared.dart';

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
      child: PaginationBuilder<DiscoverTabBloc, DiscoverTabState, NovelItemModel>(
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

              return _NovelItem(
                onPressed: () => navigator.push<void>(
                  DetailNovelRoute(
                    id: widget.id,
                    endpoint: item.link,
                  ),
                ),
                novelItem: item,
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

class _NovelItem extends StatelessWidget {
  const _NovelItem({required this.onPressed, required this.novelItem});

  final Func0<void> onPressed;
  final NovelItemModel novelItem;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Expanded(
            child: Card(
              child: CachedNetworkImage(
                imageUrl: novelItem.imgUrl,
                placeholder: (context, url) => const DeferredLoadingPlaceholder(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          Text(
            '${novelItem.name}\n',
            style: textTheme.titleSmall,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            '${novelItem.description}\n',
            style: textTheme.labelSmall,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
