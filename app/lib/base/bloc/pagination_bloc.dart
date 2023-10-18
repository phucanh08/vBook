import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'base_bloc.dart';

abstract class PaginationBloc<T, F, S extends PaginationState<T>>
    extends BaseBloc<PaginationEvent, S> {
  PaginationBloc(super.initialState) {
    on<PaginationStarted<F>>(onPaginationStarted);
    on<PaginationNextPage<F>>(onPaginationNextPage);
    on<PaginationRefreshed<F>>(onPaginationRefreshed);
  }

  void paginationStarted({Page page = const Page(), F? filter}) =>
      add(PaginationStarted<F>(page, filter: filter));

  void paginationNextPage() => add(PaginationNextPage<F>());

  void paginationRefreshed({F? filter}) => add(PaginationRefreshed<F>(filter: filter));

  Future<void> onPaginationStarted(
    PaginationStarted<F> event,
    Emitter<PaginationState<T>> emit,
  );

  Future<void> onPaginationNextPage(
    PaginationNextPage<F> event,
    Emitter<PaginationState<T>> emit,
  );

  Future<void> onPaginationRefreshed(
    PaginationRefreshed<F> event,
    Emitter<PaginationState<T>> emit,
  );
}

abstract class PaginationEvent extends BaseEvent {}

class PaginationStarted<F> extends PaginationEvent {
  PaginationStarted(this.page, {this.filter});

  final Page page;
  final F? filter;
}

class PaginationNextPage<F> extends PaginationEvent {}

class PaginationRefreshed<F> extends PaginationEvent {
  PaginationRefreshed({this.filter});

  final F? filter;
}

enum PagedStatus { initial, loading, refreshing, empty, success, failure }

abstract class PaginationState<T> extends BaseState {
  const PaginationState();
  Pagination<T> get data;
  PagedStatus get status;
}
