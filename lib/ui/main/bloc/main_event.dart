part of 'main_bloc.dart';

@freezed
class MainEvent extends BaseEvent with _$MainEvent {
  const factory MainEvent.started() = MainPageStarted;
}
