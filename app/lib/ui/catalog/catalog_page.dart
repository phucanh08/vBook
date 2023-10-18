import 'package:auto_route/auto_route.dart';
import 'package:resources/resources.dart';

import '../../app.dart';
export 'bloc/catalog_bloc.dart';

@RoutePage()
class CatalogPage extends StatefulWidget {
  const CatalogPage({
    @pathParam required this.id,
    @pathParam required this.endpoint,
    required this.title,
    super.key,
  });

  final String id;
  final String endpoint;
  final String title;

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends BasePageState<CatalogPage, CatalogBloc> {
  @override
  void initState() {
    bloc.add(
      CatalogEvent.started(id: widget.id, endpoint: widget.endpoint),
    );
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(widget.title),
      ),
      body: RefreshIndicator(
        onRefresh: () async => bloc.paginationRefreshed(),
        child: PaginationBuilder<CatalogBloc, CatalogState, ChapterModel>(
          successBuilder: (context, state, data) {
            return Column(
              children: [
                ListTile(
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          state.data.hasNext
                              ? 'Đang tải danh sách chương!'
                              : '${state.data.items.length} chương - 100%',
                        ),
                      ),
                      PopupMenuButton(
                        initialValue: state.sort,
                        onSelected: (sort) {
                          bloc.add(CatalogEvent.sortSelected(sort: sort));
                        },
                        itemBuilder: (BuildContext context) => [
                          const PopupMenuItem(
                            value: Sort.newest,
                            child: Text('Mới nhất'),
                          ),
                          const PopupMenuItem(
                            value: Sort.oldest,
                            child: Text('Cũ nhất'),
                          ),
                        ],
                        child: Row(
                          children: [
                            Text(state.sort == Sort.oldest ? 'Cũ nhất' : 'Mới nhất'),
                            const SizedBox(width: 5),
                            const FaIcon(
                              FaCodePoint.chevronDown,
                              type: IconType.regular,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(height: 1),
                Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemCount: data.items.length,
                    itemBuilder: (context, index) {
                      final _index =
                          state.sort == Sort.newest ? data.items.length - index - 1 : index;
                      final item = data.items[_index];
                      // final currentChapter = (state.sort == Sort.newest) ? index + 1 : data.items.length - index;

                      return ListTile(
                        onTap: () => bloc.add(
                          CatalogEvent.itemPressed(
                            sourceId: widget.id,
                            chapterEndpoint: item.endpoint,
                            novelEndpoint: widget.endpoint,
                            currentChapterName: item.name,
                            currentChapter: _index + 1,
                          ),
                        ),
                        title: Text(item.name),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(height: 1),
                  ),
                ),
              ],
            );
          },
          emptyBuilder: (context) => const Placeholder(),
        ),
      ),
    );
  }
}
