import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';

import '../../../app.dart';

export 'bloc/discover_tab_bloc.dart';

@RoutePage(name: 'DiscoverTabRoute')
class DiscoverTab extends StatefulWidget {
  const DiscoverTab(
      {@PathParam('id') required this.id, required this.endpoint, super.key});

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
    return PaginationBuilder<DiscoverTabBloc, DiscoverTabState, PageModel>(
      successBuilder: (context, state, data) {
        return InfiniteGridView(
          padding: const EdgeInsets.all(10),
          itemCount: data.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1 / 2,
          ),
          nextData: () => bloc.paginationNextPage(),
          onRefresh: () => bloc.paginationRefreshed(),
          itemBuilder: (context, index) {
            final item = data[index];

            return Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Flexible(child: Card(child: Image.network(item.cover))),
                      Text(
                        item.name,
                        style: textTheme.titleSmall,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),

                Text(
                  item.description,
                  style: textTheme.labelSmall,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            );
          },
        );
      },
      emptyBuilder: (context) => const Placeholder(),
    );
  }
}
