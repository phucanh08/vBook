part of 'choose_source_bloc.dart';

@freezed
class ChooseSourceEvent extends BaseEvent with _$ChooseSourceEvent {
  const factory ChooseSourceEvent.started({
    required List<PluginModel> listPlugin,
    required DraggableScrollableController controller,
  }) = _Started;

  const factory ChooseSourceEvent.dragged() = _Dragged;

  const factory ChooseSourceEvent.searchTextFieldChanged(String searchText) =
      _SearchTextFieldChanged;
}
