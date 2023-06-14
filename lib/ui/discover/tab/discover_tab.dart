import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';

import '../../../app.dart';
import 'bloc/discover_tab_bloc.dart';

@RoutePage(name: 'DiscoverTabRoute')
class DiscoverTab extends StatefulWidget {
  const DiscoverTab({required this.endpoint, super.key});

  final String endpoint;

  @override
  State<DiscoverTab> createState() => _DiscoverTabState();
}

class _DiscoverTabState extends BasePageState<DiscoverTab, DiscoverTabBloc> {
  @override
  Widget buildPage(BuildContext context) {
    return PaginationBuilder<DiscoverTabBloc, DiscoverTabState, PageModel>(
      itemBuilder: (context, state, data) {
        return InfiniteGridView(
          itemCount: data.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 3 / 4,
          ),
          nextData: () => bloc.add(DiscoverTabNextPage()),
          onRefresh: () => bloc.add(DiscoverTabRefreshed()),
          itemBuilder: (context, index) {
            return const Placeholder();
          },
        );
      },
    );
  }
}
