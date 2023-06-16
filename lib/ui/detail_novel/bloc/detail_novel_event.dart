part of 'detail_novel_bloc.dart';

@freezed
class DetailNovelEvent extends BaseEvent with _$DetailNovelEvent {
  const factory DetailNovelEvent.started() = _Started;
}
