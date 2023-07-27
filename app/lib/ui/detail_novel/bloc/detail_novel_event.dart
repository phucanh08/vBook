part of 'detail_novel_bloc.dart';

@freezed
class DetailNovelEvent extends BaseEvent with _$DetailNovelEvent {
  const factory DetailNovelEvent.started(
      {required String id, required String endpoint}) = _Started;

  const factory DetailNovelEvent.addToShelfButtonPressed({
    required String id,
    required String endpoint,
  }) = _AddToShelfButtonPressed;
}
