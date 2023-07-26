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

  Future<void> _onHomePageInitiated(
      HomePageStarted event, Emitter<HomeState> emit) async {
    final shelfOutput = await _getShelfUseCase.call(const GetShelfInput());
    emit(state.copyWith(novelInShelf: shelfOutput.data));
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
