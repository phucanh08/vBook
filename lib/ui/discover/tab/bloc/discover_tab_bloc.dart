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
          listPage: response.items,
          pagedStatus: PagedStatus.success,
        ),
      );
    }
  }

  @override
  Future<void> onPaginationNextPage(event, emit) async {
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
          listPage: [...state.listPage, ...response.items],
          pagedStatus: PagedStatus.success,
        ),
      );
    }
  }

  @override
  Future<void> onPaginationRefreshed(event, emit) async {
    emit(
      state.copyWith(
        listPage: [],
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
          listPage: response.items,
          pagedStatus: PagedStatus.success,
        ),
      );
    }
  }
}
