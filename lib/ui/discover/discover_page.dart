import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app.dart';
import 'bloc/discover_bloc.dart';
import 'widgets/widgets.dart';

export 'tab/discover_tab.dart';

@RoutePage()
class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends BasePageState<DiscoverPage, DiscoverBloc> {
  @override
  void initState() {
    bloc.add(const DiscoverEvent.started());
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<DiscoverBloc, DiscoverState>(
      builder: (context, state) {
        if (state.listHome.isEmpty) {
          return const Placeholder();
        }

        return AutoTabsRouter.tabBar(
          routes: List.generate(
            state.listHome.length,
            (index) => DiscoverTabRoute(id: state.currentPlugin?.path ?? '', endpoint: state.listHome[index].input),
          ),
          builder: (context, child, controller) {
            return Scaffold(
              appBar: CustomAppBar(
                automaticallyImplyLeading: true,
                titleSpacing: -10,
                title: BlocBuilder<DiscoverBloc, DiscoverState>(
                  builder: (context, state) {
                    return state.currentPlugin == null
                        ? const SizedBox()
                        : DiscoverTitle(
                            onPressed: () =>
                                bloc.add(const DiscoverEvent.titlePressed()),
                            iconUrl: state.currentPlugin!.icon,
                            name: state.currentPlugin!.name,
                          );
                  },
                ),
                onSearchButtonPressed: () => null,
                onMoreButtonPressed: () => null,
                bottom: TabBar(
                  isScrollable: true,
                  controller: controller,
                  dividerColor: Colors.transparent,
                  tabs: List.generate(
                    state.listHome.length,
                    (index) => Tab(text: state.listHome[index].title),
                  ),
                ),
              ),
              body: child,
            );
          },
        );
      },
    );
  }
}
