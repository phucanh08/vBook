part of 'home_bloc.dart';

@freezed
class HomeState extends BaseState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default([]) List<NovelModel> novelInShelf,
    @Default([]) List<NovelModel> novelInHistory,
  }) = _HomeState;
}
