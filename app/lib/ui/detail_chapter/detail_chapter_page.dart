import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resources/resources.dart';

import '../../app.dart';
import 'bloc/detail_chapter_bloc.dart';

@RoutePage()
class DetailChapterPage extends StatefulWidget {
  const DetailChapterPage({
    required this.id,
    required this.chapterEndpoint,
    required this.novelEndpoint,
    super.key,
  });

  final String id;
  final String chapterEndpoint;
  final String novelEndpoint;

  @override
  State<DetailChapterPage> createState() => _DetailChapterPageState();
}

class _DetailChapterPageState
    extends BasePageState<DetailChapterPage, DetailChapterBloc> {
  late final AdjustableScrollController _adjustableScrollController;

  @override
  void initState() {
    bloc.add(
      DetailChapterEvent.started(
        sourceId: widget.id,
        novelEndpoint: widget.novelEndpoint,
        chapterEndpoint: widget.chapterEndpoint,
      ),
    );
    _adjustableScrollController = AdjustableScrollController(
      onPageChanged: (int currentPage, int totalPage, double percent) {
        bloc.add(
          DetailChapterEvent.pageScrolled(
            currentPage: currentPage,
            totalPage: totalPage,
            percent: percent,
          ),
        );
        bloc.add(DetailChapterEvent.readyBookSaved(
          sourceId: widget.id,
          novelEndpoint: widget.novelEndpoint,
          chapterEndpoint: widget.chapterEndpoint,
        ));
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _adjustableScrollController.dispose();
    super.dispose();
  }

  @override
  Widget buildPageListeners({required Widget child}) {
    return BlocListener<DetailChapterBloc, DetailChapterState>(
      listener: (context, child) {
        _adjustableScrollController.updatePage();
      },
      child: child,
    );
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
                    onPressed: () => navigator.pop(),
                    icon: const FaIcon(
                      FaCodePoint.arrowLeft,
                      type: IconType.regular,
                    ),
                  ),
                  actions: [
                    BlocSelector<DetailChapterBloc, DetailChapterState, bool>(
                      selector: (_state) => _state.bookmarked,
                      builder: (context, bookmarked) {
                        return IconButton(
                          onPressed: () => bloc.add(
                            const DetailChapterEvent.bookmarkChanged(),
                          ),
                          isSelected: bookmarked,
                          icon: const FaIcon(
                            FaCodePoint.bookmark,
                            type: IconType.regular,
                          ),
                          selectedIcon: const FaIcon(
                            FaCodePoint.bookmark,
                            type: IconType.solid,
                          ),
                        );
                      },
                    ),
                    IconButton(
                      onPressed: () =>
                          _adjustableScrollController.changeAdjustableScroll(),
                      icon: Transform.rotate(
                        angle: -pi * 3 / 4,
                        child: const FaIcon(
                          FaCodePoint.arrowUpLeftFromCircle,
                          type: IconType.regular,
                        ),
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
                              state.model?.url ?? '',
                              style: textTheme.bodySmall,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(
                              text: state.model?.url ?? '',
                            )).then((_) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(state.model?.url ?? ''),
                                ),
                              );
                            });
                          },
                          tooltip: 'Copy',
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
            onPanDown: (_) {
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
            onHorizontalDragEnd: (dragEndDetails) {
              if (dragEndDetails.primaryVelocity is double) {
                _adjustableScrollController.jumpTo(0);
                if (dragEndDetails.primaryVelocity! < 0) {
                  logD('Move page forwards');
                  bloc.add(
                    DetailChapterEvent.started(
                      sourceId: widget.id,
                      chapterEndpoint:
                          state.catalog[state.currentChapter].endpoint,
                      novelEndpoint: widget.novelEndpoint,
                    ),
                  );
                } else if (dragEndDetails.primaryVelocity! > 0) {
                  logD('Move page backwards');
                  bloc.add(
                    DetailChapterEvent.started(
                      sourceId: widget.id,
                      chapterEndpoint:
                          state.catalog[state.currentChapter - 2].endpoint,
                      novelEndpoint: widget.novelEndpoint,
                    ),
                  );
                }
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
                      child: Text(state.title),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      controller: _adjustableScrollController,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            state.title,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${state.currentChapter}/${state.totalChapter}'),
                        Flexible(
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                    text:
                                        '${state.currentPage}/${state.totalPage}  '),
                                TextSpan(text: '${state.percentOfNovel}%'),
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
