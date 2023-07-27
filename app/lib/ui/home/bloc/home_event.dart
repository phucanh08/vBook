part of 'home_bloc.dart';

@freezed
class HomeEvent extends BaseEvent with _$HomeEvent {
  const factory HomeEvent.started() = HomePageStarted;

  const factory HomeEvent.navigationBarDestinationSelected(int index) =
      NavigationBarDestinationSelected;

  const factory HomeEvent.historyUpdated(List<NovelModel> data) =
  _HistoryUpdated;

  const factory HomeEvent.shelfUpdated(List<NovelModel> data) =
  _ShelfUpdated;
}
