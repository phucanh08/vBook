part of 'individual_bloc.dart';

@freezed
class IndividualEvent extends BaseEvent with _$IndividualEvent {
  const factory IndividualEvent.started() = _Started;
}
