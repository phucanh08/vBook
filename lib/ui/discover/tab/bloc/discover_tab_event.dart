part of 'discover_tab_bloc.dart';

@freezed
class DiscoverTabEvent extends PaginationEvent with _$DiscoverTabEvent {
  const factory DiscoverTabEvent.started({
    required String id,
    required String endpoint,
  }) = _Started;
}
