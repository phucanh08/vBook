import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../app.dart';

part 'discover_tab_event.dart';

part 'discover_tab_state.dart';

part 'discover_tab_bloc.freezed.dart';

@injectable
class DiscoverTabBloc
    extends PaginationBloc<PageModel, String, DiscoverTabState> {
  DiscoverTabBloc(this._getListNovelInHomeUseCase)
      : super(const DiscoverTabState()) {
    on<_Started>(_onStarted);
  }

  final GetListNovelInHomeUseCase _getListNovelInHomeUseCase;

  void _onStarted(_Started event, Emitter<DiscoverTabState> emit) {
    emit(state.copyWith(id: event.id, endpoint: event.endpoint));
    paginationStarted();
  }

  @override
  Future<void> onPaginationStarted(event, emit) async {
    return runBlocCatching(
      action: () async {
        emit(state.copyWith(pagedStatus: PagedStatus.loading));
        final response = await _getListNovelInHomeUseCase.call(
          GetListNovelInHomeInput(
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
        final response = await _getListNovelInHomeUseCase.call(
          GetListNovelInHomeInput(
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
            Pagination(items: <PageModel>[], hasNext: state.data.hasNext);

        emit(
          state.copyWith(
            paginationData: newData,
            page: state.page.copyWith(number: 0),
            pagedStatus: PagedStatus.refreshing,
          ),
        );
        final response = await _getListNovelInHomeUseCase.call(
          GetListNovelInHomeInput(
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
