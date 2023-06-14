import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'base_bloc.dart';

abstract class PaginationBloc<T, F, S extends PaginationState<T>>
    extends BaseBloc<PaginationEvent, S> {
  PaginationBloc(S initialState) : super(initialState) {
    on<PaginationStarted<F>>(_onPaginationStarted);
    on<PaginationNextPage<F>>(_onPaginationNextPage);
    on<PaginationRefreshed<F>>(_onPaginationRefreshed);
  }

  Future<void> _onPaginationStarted(
    PaginationStarted<F> event,
    Emitter<PaginationState<T>> emit,
  );

  Future<void> _onPaginationNextPage(
    PaginationNextPage<F> event,
    Emitter<PaginationState<T>> emit,
  );

  Future<void> _onPaginationRefreshed(
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
  PaginationState({
    this.data = const [],
    this.status = PagedStatus.initial,
  });

  final List<T> data;
  final PagedStatus status;
}