part of 'home_bloc.dart';

@freezed
class HomeState extends BaseState with _$HomeState {
  const factory HomeState() = _HomeState;

  factory HomeState.initial() {
    return const HomeState();
  }
}
