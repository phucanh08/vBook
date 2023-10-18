import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resources/resources.dart';

import '../../../app.dart';
import 'bloc/choose_source_bloc.dart';

class ChooseSourceBottomSheet extends StatefulWidget {
  const ChooseSourceBottomSheet(this.listPlugin, {super.key});

  final List<PluginModel> listPlugin;

  @override
  State<ChooseSourceBottomSheet> createState() => _ChooseSourceBottomSheetState();
}

class _ChooseSourceBottomSheetState
    extends BasePageState<ChooseSourceBottomSheet, ChooseSourceBloc> {
  final dragController = DraggableScrollableController();

  @override
  void initState() {
    bloc.add(ChooseSourceEvent.started(
      listPlugin: widget.listPlugin,
      controller: dragController,
    ));
    super.initState();
  }

  @override
  void dispose() {
    bloc.onDestroyed();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return GestureDetector(
      onTap: () => navigator.pop(),
      child: SafeArea(
        bottom: false,
        child: DraggableScrollableSheet(
          controller: dragController,
          minChildSize: 0.4,
          initialChildSize: 0.8,
          maxChildSize: 1,
          snap: true,
          snapSizes: const [0.8, 1],
          builder: (context, scrollController) {
            return Stack(
              children: [
                BlocBuilder<ChooseSourceBloc, ChooseSourceState>(
                  buildWhen: (prev, cur) => prev.dragSize != cur.dragSize,
                  builder: (context, state) {
                    return Padding(
                      padding: EdgeInsets.only(
                        top: 48 * (1 - state.animationPercent),
                      ),
                      child: Column(
                        children: [
                          AnimatedOpacity(
                            opacity: state.animationPercent == 1 ? 1 : 0,
                            duration: const Duration(milliseconds: 50),
                            child: Container(height: 40, color: colorScheme.background),
                          ),
                          Opacity(
                            opacity: state.animationPercent,
                            child: Container(
                              color: colorScheme.background,
                              child: TextField(
                                onChanged: (value) {
                                  bloc.add(
                                    ChooseSourceEvent.searchTextFieldChanged(
                                      value,
                                    ),
                                  );
                                },
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: FaIcon(
                                    FaCodePoint.magnifyingGlass1,
                                    type: IconType.regular,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(top: 88),
                  color: colorScheme.background,
                  child: BlocBuilder<ChooseSourceBloc, ChooseSourceState>(
                    buildWhen: (prev, cur) => prev.listFilter != cur.listFilter,
                    builder: (context, state) {
                      return GridView.builder(
                        controller: scrollController,
                        padding: const EdgeInsets.all(10),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 3,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                        ),
                        itemCount: state.listFilter.length,
                        itemBuilder: (BuildContext context, int index) {
                          final item = state.listFilter[index];
                          final theme = Theme.of(context);

                          return OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                color: item.tag == 'nsfw'
                                    ? theme.colorScheme.error
                                    : theme.colorScheme.outline,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.all(10),
                            ),
                            icon: Card(
                              child: Image.network(
                                item.icon,
                                width: 30,
                                height: 30,
                                fit: BoxFit.contain,
                              ),
                            ),
                            label: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  item.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyLarge,
                                ),
                                Text(
                                  item.source,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ],
                            ),
                            onPressed: () => navigator.pop(result: item),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
