part of 'extension_bloc.dart';

@freezed
class ExtensionEvent extends BaseEvent with _$ExtensionEvent {
  const factory ExtensionEvent.started() = _Started;
  const factory ExtensionEvent.toggleSearchModeConfirmed() = _ToggleSearchModeConfirmed;
  const factory ExtensionEvent.searchTextChanged(String text) = _SearchTextChanged;
  const factory ExtensionEvent.removeButtonPressed(int index) = _RemoveButtonPressed;
  const factory ExtensionEvent.downLoadButtonPressed(int index) = _DownLoadButtonPressed;
}
