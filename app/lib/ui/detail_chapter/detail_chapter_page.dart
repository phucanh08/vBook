import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app.dart';
import 'bloc/detail_chapter_bloc.dart';
import 'widgets/detail_chapter_appbar.dart';
import 'widgets/detail_chapter_body.dart';
import 'widgets/detail_chapter_bottom_bar.dart';

@RoutePage()
class DetailChapterPage extends StatefulWidget {
  const DetailChapterPage({
    required this.id,
    required this.chapterEndpoint,
    required this.novelEndpoint,
    this.percent = 0,
    super.key,
  });

  final String id;
  final String chapterEndpoint;
  final String novelEndpoint;
  final double percent;

  @override
  State<DetailChapterPage> createState() => _DetailChapterPageState();
}

class _DetailChapterPageState extends BasePageState<DetailChapterPage, DetailChapterBloc> {
  @override
  void initState() {
    bloc.add(
      DetailChapterEvent.started(
        sourceId: widget.id,
        novelEndpoint: widget.novelEndpoint,
        chapterEndpoint: widget.chapterEndpoint,
        percent: widget.percent,
      ),
    );
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BlocBuilder<DetailChapterBloc, DetailChapterState>(
            buildWhen: (prev, cur) =>
                prev.visibleAppBar != cur.visibleAppBar ||
                prev.title != cur.title ||
                prev.model?.contents != cur.model?.contents,
            builder: (context, state) {
              return DetailChapterBody(
                onVisibleAppBarChanged: (visible) => bloc.add(
                  DetailChapterEvent.visibleAppBarChanged(visible: visible),
                ),
                onHorizontalDragged: (type) => bloc.add(
                  DetailChapterEvent.horizontalDragged(type),
                ),
                visibleAppBar: state.visibleAppBar,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(state.title),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        controller: bloc.scrollController,
                        padding: const EdgeInsets.all(10),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              WidgetSpan(
                                child: Text(
                                  state.title,
                                  style: textTheme.titleLarge,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              ...?state.model?.contents.map(
                                (e) => WidgetSpan(child: Text(e)),
                              ),
                            ],
                          ),
                          style: textTheme.bodyLarge,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    // Expanded(
                    //   child: ListView.separated(
                    //     controller: state.scrollController,
                    //     padding: const EdgeInsets.all(10),
                    //     itemBuilder: (context, index) {
                    //       if (index == 0) {
                    //         return Text(
                    //           state.title,
                    //           style: textTheme.titleLarge,
                    //           textAlign: TextAlign.center,
                    //         );
                    //       }
                    //
                    //       return Text(
                    //         state.model!.contents[index],
                    //         style: textTheme.bodyLarge,
                    //         textAlign: TextAlign.justify,
                    //       );
                    //     },
                    //     separatorBuilder: (_, __) => const SizedBox(height: 10),
                    //     itemCount: state.model?.contents.length ?? 0,
                    //   ),
                    // ),
                    BlocBuilder<DetailChapterBloc, DetailChapterState>(
                      buildWhen: (prev, cur) =>
                          prev.currentChapter != cur.currentChapter ||
                          prev.totalChapter != cur.totalChapter ||
                          prev.currentPage != cur.currentPage ||
                          prev.totalPage != cur.totalPage ||
                          prev.percentOfNovel != cur.percentOfNovel,
                      builder: (context, state) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('${state.currentChapter}/${state.totalChapter}'),
                              Flexible(
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: '${state.currentPage}/${state.totalPage}  '),
                                      TextSpan(text: '${state.percentOfNovel}%'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
          BlocBuilder<DetailChapterBloc, DetailChapterState>(
            buildWhen: (prev, cur) =>
                prev.visibleAppBar != cur.visibleAppBar || prev.url != cur.url,
            builder: (context, state) {
              return DetailChapterAppBar(
                onBookmarkButtonPressed: () => bloc.add(
                  const DetailChapterEvent.bookmarkChanged(),
                ),
                onChangeStatusButtonPressed: () => bloc.add(
                  const DetailChapterEvent.adjustableScrollChanged(),
                ),
                visible: state.visibleAppBar,
                url: state.url,
              );
            },
          ),
          BlocBuilder<DetailChapterBloc, DetailChapterState>(
            buildWhen: (prev, cur) =>
                prev.visibleAppBar != cur.visibleAppBar ||
                prev.url != cur.url ||
                prev.title != cur.title ||
                prev.currentChapter != cur.currentChapter ||
                prev.totalChapter != cur.totalChapter,
            builder: (context, state) {
              return DetailChapterBottomBar(
                visible: state.visibleAppBar,
                url: state.url,
                title: state.title,
                currentChapter: state.currentChapter,
                totalChapter: state.totalChapter,
                onSpeakButtonPressed: () => bloc.add(
                  const DetailChapterEvent.ttsEvent(TTSEvent.play),
                ),
                onTTSEvent: (ttsEvent) => bloc.add(
                  DetailChapterEvent.ttsEvent(ttsEvent),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
