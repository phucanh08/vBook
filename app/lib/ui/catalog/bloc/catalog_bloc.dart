import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../app.dart';

part 'catalog_bloc.freezed.dart';
part 'catalog_event.dart';
part 'catalog_state.dart';

@injectable
class CatalogBloc extends PaginationBloc<ChapterModel, String, CatalogState> {
  CatalogBloc(this._getCatalogUseCase, this._saveNovelUseCase)
      : super(const CatalogState()) {
    on<_Started>(_onStarted);
    on<_sortSelected>(_onSortSelected);
    on<_itemPressed>(_onItemPressed);
  }

  final GetCatalogUseCase _getCatalogUseCase;
  final SaveNovelUseCase _saveNovelUseCase;

  void _onStarted(_Started event, emit) {
    runBlocCatching(action: () async {
      emit(state.copyWith(id: event.id, endpoint: event.endpoint));
      paginationStarted();
    });
  }

  void _onItemPressed(_itemPressed event, emit) {
    runBlocCatching(action: () async {
      await _saveNovelUseCase.call(
        SaveNovelInput(
          sourceId: event.sourceId,
          endpoint: event.endpoint,
          novelEndpoint: event.novelEndpoint,
          currentChapterName: event.currentChapterName,
          currentChapter: event.currentChapter,
          totalChapters: state.data.items.length,
        ),
      );
      await navigator.replace(
        DetailChapterRoute(
          id: event.sourceId,
          novelEndpoint: event.novelEndpoint,
          endpoint: event.endpoint,
          title: event.currentChapterName,
        ),
      );
    });
  }

  void _onSortSelected(_sortSelected event, emit) {
    runBlocCatching(action: () async {
      emit(state.copyWith(sort: event.sort));
    });
  }

  @override
  Future<void> onPaginationStarted(event, emit) async {
    return runBlocCatching(
      action: () async {
        emit(state.copyWith(pagedStatus: PagedStatus.loading));
        final response = await _getCatalogUseCase.call(
          GetCatalogInput(
            id: state.id,
            endpoint: state.endpoint,
            page: state.page,
          ),
        );
        if (response.items.isEmpty) {
          emit(state.copyWith(pagedStatus: PagedStatus.empty));
        } else {
          emit(
            state.copyWith(
              paginationData: response,
              pagedStatus: PagedStatus.success,
            ),
          );
        }
      },
      doOnError: (error) async {
        logD(error.toString());
      },
      handleLoading: false,
    );
  }

  @override
  Future<void> onPaginationNextPage(event, emit) {
    return runBlocCatching(
      action: () async {
        emit(state.copyWith(pagedStatus: PagedStatus.loading));
        final newPage = state.page.copyWith(number: state.page.number + 1);
        final response = await _getCatalogUseCase.call(
          GetCatalogInput(
            id: state.id,
            endpoint: state.endpoint,
            page: newPage,
          ),
        );
        final newData = Pagination(
          items: state.data.items + response.items,
          hasNext: state.data.hasNext,
        );
        emit(
          state.copyWith(
            paginationData: newData,
            pagedStatus: PagedStatus.success,
            page: newPage,
          ),
        );
      },
      doOnError: (error) async {
        logD(error.toString());
      },
      handleLoading: false,
    );
  }

  @override
  Future<void> onPaginationRefreshed(event, emit) {
    return runBlocCatching(
      action: () async {
        final newData =
            Pagination(items: <ChapterModel>[], hasNext: state.data.hasNext);

        emit(
          state.copyWith(
            paginationData: newData,
            page: state.page.copyWith(number: 0),
            pagedStatus: PagedStatus.refreshing,
          ),
        );
        final response = await _getCatalogUseCase.call(
          GetCatalogInput(
            id: state.id,
            endpoint: state.endpoint,
            page: state.page,
          ),
        );
        if (response.items.isEmpty) {
          emit(state.copyWith(pagedStatus: PagedStatus.empty));
        } else {
          emit(
            state.copyWith(
              paginationData: response,
              pagedStatus: PagedStatus.success,
            ),
          );
        }
      },
      doOnError: (error) async {
        logD(error.toString());
      },
      handleLoading: false,
    );
  }
}
