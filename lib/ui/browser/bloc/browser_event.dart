part of 'browser_bloc.dart';

@freezed
class BrowserEvent extends BaseEvent with _$BrowserEvent {
  const factory BrowserEvent.started() = _Started;
}
