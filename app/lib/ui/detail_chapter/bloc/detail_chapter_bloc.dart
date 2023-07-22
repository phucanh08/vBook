import 'dart:async';

import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../app.dart';

part 'detail_chapter_event.dart';

part 'detail_chapter_state.dart';

part 'detail_chapter_bloc.freezed.dart';

@injectable
class DetailChapterBloc
    extends BaseBloc<DetailChapterEvent, DetailChapterState> {
  DetailChapterBloc(this._getDetailChapterUseCase)
      : super(const DetailChapterState()) {
    on<_Started>(_onStarted);
    on<_VisibleAppBarChanged>(_onVisibleAppBarChanged);
    on<_BookmarkChanged>(_onBookmarkChanged);
  }

  final GetDetailChapterUseCase _getDetailChapterUseCase;

  Future<void> _onStarted(_Started event, emit) {
    return runBlocCatching(action: () async {
      final response = await _getDetailChapterUseCase.call(
        GetDetailChapterInput(
          sourceId: event.sourceId,
          endpoint: event.endpoint,
        ),
      );
      emit(state.copyWith(model: response.data));
    });
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
}
