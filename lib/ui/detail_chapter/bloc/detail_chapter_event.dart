part of 'detail_chapter_bloc.dart';

@freezed
class DetailChapterEvent extends BaseEvent with _$DetailChapterEvent {
  const factory DetailChapterEvent.started({
    required String id,
    required String endpoint,
  }) = _Started;
}
