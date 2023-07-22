import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resources/resources.dart';

import '../../app.dart';
import 'bloc/detail_chapter_bloc.dart';

@RoutePage()
class DetailChapterPage extends StatefulWidget {
  const DetailChapterPage({
    @PathParam('id') required this.id,
    @PathParam('endpoint') required this.endpoint,
    required this.novelEndpoint,
    required this.title,
    super.key,
  });

  final String id;
  final String endpoint;
  final String novelEndpoint;
  final String title;

  @override
  State<DetailChapterPage> createState() => _DetailChapterPageState();
}

class _DetailChapterPageState
    extends BasePageState<DetailChapterPage, DetailChapterBloc> {
  @override
  void initState() {
    bloc.add(
      DetailChapterEvent.started(
        sourceId: widget.id,
        endpoint: widget.endpoint,
        novelEndpoint: widget.novelEndpoint,
        title: widget.title,
      ),
    );
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<DetailChapterBloc, DetailChapterState>(
      builder: (context, state) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: state.visibleAppBar
              ? AppBar(
                  leading: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () => context.router.pop(),
                    icon: const FaIcon(
                      FaCodePoint.arrowLeft,
                      type: IconType.regular,
                    ),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () => bloc.add(
                        const DetailChapterEvent.bookmarkChanged(),
                      ),
                      isSelected: state.bookmarked,
                      icon: const FaIcon(
                        FaCodePoint.bookmark,
                        type: IconType.regular,
                      ),
                      selectedIcon: const FaIcon(
                        FaCodePoint.bookmark,
                        type: IconType.solid,
                      ),
                    ),
                    IconButton(
                      onPressed: () => null,
                      icon: const FaIcon(
                        FaCodePoint.downToLine,
                        type: IconType.regular,
                      ),
                    ),
                    IconButton(
                      onPressed: () => null,
                      icon: const FaIcon(
                        FaCodePoint.ellipsisStrokeVertical,
                        type: IconType.regular,
                      ),
                    ),
                  ],
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(30),
                    child: Row(
                      children: [
                        Expanded(
                          child: ScrollLoopAutoScroll(
                            duration: const Duration(minutes: 2),
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              'Very long text that bleeds out of the rendering space',
                              style: textTheme.bodySmall,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () => null,
                          iconSize: 16,
                          splashRadius: 20,
                          padding: EdgeInsets.zero,
                          icon: const FaIcon(
                            FaCodePoint.copy,
                            type: IconType.regular,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : null,
          body: GestureDetector(
            onTap: () {
              if (state.visibleAppBar) {
                bloc.add(
                  const DetailChapterEvent.visibleAppBarChanged(visible: false),
                );
              }
            },
            onDoubleTap: () {
              if (!state.visibleAppBar) {
                bloc.add(
                  const DetailChapterEvent.visibleAppBarChanged(visible: true),
                );
              }
            },
            child: SafeArea(
              bottom: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: !state.visibleAppBar,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(widget.title),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            widget.title,
                            style: textTheme.titleLarge,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            state.model?.content ?? '',
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('543/2571'),
                        Flexible(
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: '3/10   '),
                                TextSpan(text: '21.10%'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
