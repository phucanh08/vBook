import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../app.dart';

part 'detail_chapter_event.dart';

part 'detail_chapter_state.dart';

part 'detail_chapter_bloc.freezed.dart';

@injectable
class DetailChapterBloc
    extends BaseBloc<DetailChapterEvent, DetailChapterState> {
  DetailChapterBloc(
    this._getDetailChapterUseCase,
    this._getCatalogUseCase,
    this._saveNovelUseCase,
  ) : super(
          DetailChapterState(
            scrollController: AdjustableScrollController(),
          ),
        ) {
    on<_Started>(_onStarted);
    on<_ReadyBookSaved>(
      _onReadyBookSaved,
      transformer: debounceTime(),
    );
    on<_VisibleAppBarChanged>(
      _onVisibleAppBarChanged,
      transformer: debounceTime(duration: const Duration(seconds: 1)),
    );
    on<_BookmarkChanged>(_onBookmarkChanged);
    on<_PageScrolled>(_onPageScrolled);
    on<_HorizontalDragged>(_onHorizontalDragged);
    state.scrollController.onPageChanged = (
      int currentPage,
      int totalPage,
      double percent,
    ) {
      add(
        _PageScrolled(
          currentPage: currentPage,
          totalPage: totalPage,
          percent: percent,
        ),
      );
    };
  }

  final SaveNovelUseCase _saveNovelUseCase;
  final GetCatalogUseCase _getCatalogUseCase;
  final GetDetailChapterUseCase _getDetailChapterUseCase;

  Future<void> _onStarted(_Started event, emit) {
    return runBlocCatching(action: () async {
      final response2 = await _getCatalogUseCase.call(
        GetCatalogInput(
          id: event.sourceId,
          novelEndpoint: event.novelEndpoint,
          page: const Page(),
        ),
      );

      final chapterEndpoint = event.chapterEndpoint.isNotEmpty
          ? event.chapterEndpoint
          : response2.items.firstOrNull?.endpoint ?? '';

      emit(state.copyWith(
        sourceId: event.sourceId,
        novelEndpoint: event.novelEndpoint,
        catalog: response2.items,
        currentChapter: response2.items.indexWhere(
              (element) => element.endpoint == chapterEndpoint,
            ) +
            1,
      ));

      await _updateChapter(chapterEndpoint, emit, event.percent);
    }, doOnError: (error) async {
      logE(error);
    });
  }

  Future<void> _onReadyBookSaved(_ReadyBookSaved event, emit) {
    return runBlocCatching(
      action: () {
        return _saveNovelUseCase.call(
          SaveNovelInput(
            sourceId: state.sourceId,
            novelEndpoint: state.novelEndpoint,
            chapterEndpoint: event.chapterEndpoint,
            currentChapterName: state.title,
            currentChapter: state.currentChapter,
            totalChapters: state.totalChapter,
            scrollPercent: state.percent,
          ),
        );
      },
      handleLoading: false,
    );
  }

  Future<void> _onVisibleAppBarChanged(_VisibleAppBarChanged event, emit) {
    return runBlocCatching(action: () async {
      emit(state.copyWith(visibleAppBar: event.visible));
    });
  }

  Future<void> _onBookmarkChanged(_BookmarkChanged event, emit) {
    return runBlocCatching(action: () async {
      emit(state.copyWith(bookmarked: !state.bookmarked));
    });
  }

  Future<void> _onPageScrolled(_PageScrolled event, emit) {
    return runBlocCatching(
      action: () async {
        emit(state.copyWith(
          currentPage: event.currentPage,
          totalPage: event.totalPage,
          percent: event.percent,
        ));
        add(_ReadyBookSaved(state.catalog[state.currentChapter - 1].endpoint));
      },
      handleLoading: false,
    );
  }

  Future<void> _onHorizontalDragged(_HorizontalDragged event, emit) {
    return runBlocCatching(
      action: () async {
        switch (event.type) {
          case HorizontalDraggedEnum.forward:
            if (state.currentChapter <= state.catalog.length) {
              logD('Move page forwards');
              await _updateChapter(
                state.catalog[state.currentChapter].endpoint,
                emit,
              );
            }
            break;
          case HorizontalDraggedEnum.backward:
            if (state.currentChapter - 2 >= 0) {
              logD('Move page backwards');
              await _updateChapter(
                state.catalog[state.currentChapter - 2].endpoint,
                emit,
              );
            }
            break;
          default:
            break;
        }
      },
      handleLoading: false,
    );
  }

  Future<void> _updateChapter(String chapterEndpoint, emit,
      [double percent = 0]) {
    return runBlocCatching(
      action: () async {
        final response = await _getDetailChapterUseCase.call(
          GetDetailChapterInput(
            sourceId: state.sourceId,
            chapterEndpoint: chapterEndpoint,
          ),
        );
        emit(state.copyWith(
          model: response.data,
          currentChapter: state.catalog.indexWhere(
                (element) => element.endpoint == chapterEndpoint,
              ) +
              1,
        ));
        Future.delayed(const Duration(milliseconds: 100), () {
          state.scrollController.updateScrollPosition(percent);
        });
        add(_ReadyBookSaved(chapterEndpoint));
      },
      handleLoading: false,
    );
  }
}
