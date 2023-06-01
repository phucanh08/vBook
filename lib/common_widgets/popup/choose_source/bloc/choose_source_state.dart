part of 'choose_source_bloc.dart';

@freezed
class ChooseSourceState extends BaseState with _$ChooseSourceState {
  const ChooseSourceState._();

  const factory ChooseSourceState({
    @Default(<SourceModel>[]) List<SourceModel> listSource,
    @Default(0.8) double dragSize,
    @Default('') String searchText,
  }) = _ChooseSourceState;

  double get animationPercent {
    if (dragSize < 0.8) {
      return 0.0;
    } else if (dragSize > 1) {
      return 1.0;
    } else {
      return ((dragSize - 0.8) / 0.2 * 1000).round() / 1000;
    }
  }

  List<SourceModel> get sources => searchText.isEmpty
      ? listSource
      : listSource
          .where((e) => e.name
              .toLowerCaseNonAccentVietnamese()
              .contains(searchText.toLowerCaseNonAccentVietnamese()))
          .toList();
}
