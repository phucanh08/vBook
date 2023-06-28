import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resources/resources.dart';

import '../../app.dart';
import 'widgets/widgets.dart';

export 'bloc/detail_novel_bloc.dart';

@RoutePage()
class DetailNovelPage extends StatefulWidget {
  const DetailNovelPage({
    @PathParam('id') required this.id,
    @PathParam('endpoint') required this.endpoint,
    super.key,
  });

  final String id;
  final String endpoint;

  @override
  State<DetailNovelPage> createState() => _DetailNovelPageState();
}

class _DetailNovelPageState
    extends BasePageState<DetailNovelPage, DetailNovelBloc> {
  final scrollController = ScrollController();

  @override
  void initState() {
    bloc.add(
      DetailNovelEvent.started(id: widget.id, endpoint: widget.endpoint),
    );
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DetailNovelBloc, DetailNovelState>(
        buildWhen: (prev, cur) => prev.model != cur.model,
        builder: (context, state) {
          return state.model == null
              ? const SizedBox()
              : CustomScrollView(
                  controller: scrollController,
                  slivers: [
                    SliverLayoutBuilder(
                      builder: (context, constraints) {
                        final height = MediaQuery.of(context).size.height;
                        final scrollPosition = scrollController.position.pixels;
                        final x = scrollPosition.abs() > height / 6
                            ? (scrollPosition.abs() - height / 6).abs()
                            : 0;

                        final data = x / (height / 6);
                        final double opacity = data.abs() > 1 ? 1 : data.abs();

                        return SliverAppBar(
                          pinned: true,
                          expandedHeight:
                              MediaQuery.of(context).size.height / 3,
                          flexibleSpace: FlexibleSpaceBar(
                            expandedTitleScale: 1,
                            collapseMode: CollapseMode.pin,
                            background: Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(state.model!.imgUrl),
                                  fit: BoxFit.cover,
                                  opacity: 0.05,
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Card(
                                      child: Image.network(state.model!.imgUrl),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          state.model!.name,
                                          style: textTheme.titleLarge,
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          state.model!.detail,
                                          style: textTheme.bodyMedium
                                              ?.copyWith(height: 1.7),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          title: Opacity(
                            opacity: opacity,
                            child: Text(state.model!.name),
                          ),
                          backgroundColor: Theme.of(context)
                              .appBarTheme
                              .backgroundColor
                              ?.withOpacity(opacity),
                          leading: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () => navigator.pop(),
                            icon: const FaIcon(
                              FaCodePoint.arrowLeft,
                              type: IconType.regular,
                            ),
                          ),
                          actions: [
                            IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () => navigator.pop(),
                              icon: const FaIcon(
                                FaCodePoint.planetRinged,
                                type: IconType.regular,
                              ),
                            ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () => navigator.pop(),
                              icon: const FaIcon(
                                FaCodePoint.arrowUpFromBracket,
                                type: IconType.regular,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          Text(
                            state.model!.description,
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
        },
      ),
      bottomNavigationBar: BlocBuilder<DetailNovelBloc, DetailNovelState>(
        builder: (context, state) {
          return DetailNovelBottomSheet(
            onDownloadButtonPressed: () {},
            onCatalogButtonPressed: () => navigator.push<void>(
              CatalogRoute(
                id: widget.id,
                endpoint: widget.endpoint,
                title: state.model?.name ?? '',
              ),
            ),
            onAddToShelfButtonPressed: () {},
          );
        },
      ),
    );
  }
}
