import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resources/resources.dart';

import '../../app.dart';

export 'bloc/extension_bloc.dart';
export 'tabs/tabs.dart';

@RoutePage()
class ExtensionPage extends StatefulWidget {
  const ExtensionPage({super.key});

  @override
  State<ExtensionPage> createState() => _ExtensionPageState();
}

class _ExtensionPageState extends BasePageState<ExtensionPage, ExtensionBloc> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    bloc.add(const ExtensionEvent.started());
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    final theme = Theme.of(context);

    return AutoTabsRouter.tabBar(
      routes: [
        UpdateTabRouter(bloc: bloc),
        LibraryTabRouter(bloc: bloc),
      ],
      animatePageTransition: true,
      builder: (context, child, controller) {
        return BlocBuilder<ExtensionBloc, ExtensionState>(
          buildWhen: (prev, cur) => prev.isSearchMode != cur.isSearchMode,
          builder: (context, state) {
            return Scaffold(
              appBar: state.isSearchMode
                  ? CustomAppBar.search(
                      onChanged: (value) {
                        bloc.add(ExtensionEvent.searchTextChanged(value));
                      },
                      controller: textEditingController,
                      onCloseConfirmed: () => bloc.add(
                        const ExtensionEvent.toggleSearchModeConfirmed(),
                      ),
                    )
                  : CustomAppBar(
                      title: TabBar(
                        controller: controller,
                        dividerColor: Colors.transparent,
                        tabs: [
                          Tab(text: t.extension.update.title),
                          Stack(
                            alignment: AlignmentDirectional.topEnd,
                            children: [
                              BlocBuilder<ExtensionBloc, ExtensionState>(
                                buildWhen: (prev, cur) =>
                                    prev.listLibraryPlugin.length !=
                                    cur.listLibraryPlugin.length,
                                builder: (context, state) {
                                  return Positioned(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: theme.colorScheme.onSurface,
                                      ),
                                      child: Text(
                                        state.listLibraryPlugin.length
                                            .toString(),
                                        style:
                                            theme.textTheme.bodySmall?.copyWith(
                                          color: theme.colorScheme.surface,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              Tab(text: t.extension.library.title),
                            ],
                          ),
                        ],
                      ),
                      titleSpacing: -5,
                      onSearchButtonPressed: () => bloc.add(
                        const ExtensionEvent.toggleSearchModeConfirmed(),
                      ),
                      onMoreButtonPressed: () => null,
                    ),
              body: child,
            );
          },
        );
      },
    );
  }
}
