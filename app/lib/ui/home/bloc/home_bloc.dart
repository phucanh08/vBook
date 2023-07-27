import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../app.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

@Injectable()
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc(this._getShelfUseCase, this._getHistoryUseCase)
      : super(const HomeState()) {
    on<HomePageStarted>(_onHomePageInitiated, transformer: log());
    on<_HistoryUpdated>(_onHistoryUpdated, transformer: log());
    on<_ShelfUpdated>(_onShelfUpdated, transformer: log());
    on<NavigationBarDestinationSelected>(
      _onNavigationBarDestinationSelected,
      transformer: log(),
    );
    add(const HomePageStarted());
  }

  final GetShelfUseCase _getShelfUseCase;
  final GetHistoryUseCase _getHistoryUseCase;

  void _onHistoryUpdated(
    _HistoryUpdated event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(novelInHistory: event.data));
  }

  void _onShelfUpdated(
    _ShelfUpdated event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(novelInShelf: event.data));
  }

  void _onHomePageInitiated(
      HomePageStarted event, Emitter<HomeState> emit) {
    final shelfOutput = _getShelfUseCase.call(const GetShelfInput());
    shelfOutput.listen((event) => add(_ShelfUpdated(event.data)));
    final historyOutput = _getHistoryUseCase.call(const GetHistoryInput());
    historyOutput.listen((event) => add(_HistoryUpdated(event.data)));
  }

  void _onNavigationBarDestinationSelected(
    NavigationBarDestinationSelected event,
    Emitter<HomeState> emit,
  ) {
    switch (event.index) {
      case 1:
        navigator.push(const DiscoverRoute());
        break;
      case 2:
        navigator.push(const CommunityRoute());
        break;
      case 3:
        navigator.push(const IndividualRoute());
        break;
    }
  }
}
