part of 'main_bloc.dart';

@freezed
class MainState extends BaseState with _$MainState {
  const factory MainState({
    @Default('') String id,
  }) = _MainState;

  factory MainState.initial() {
    return const MainState();
  }
}
