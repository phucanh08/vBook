part of 'discover_bloc.dart';

@freezed
class DiscoverEvent extends BaseEvent with _$DiscoverEvent {
  const factory DiscoverEvent.started() = _Started;
}
