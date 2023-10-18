import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

import '../../../app.dart';

part 'extension_event.dart';
part 'extension_state.dart';
part 'extension_bloc.freezed.dart';

@injectable
class ExtensionBloc extends BaseBloc<ExtensionEvent, ExtensionState> {
  ExtensionBloc(
    this._getListLibraryPluginUseCase,
    this._getListLocalPluginUseCase,
    this._removeLocalPluginUseCase,
    this._saveLocalPluginUseCase,
  ) : super(const ExtensionState()) {
    on<_Started>(_onStarted, transformer: log());
    on<_ToggleSearchModeConfirmed>(_onToggleSearchModeConfirmed, transformer: log());
    on<_SearchTextChanged>(_onSearchTextChanged, transformer: log());
    on<_RemoveButtonPressed>(_onRemoveButtonPressed, transformer: log());
    on<_DownLoadButtonPressed>(_onDownLoadButtonPressed, transformer: log());
  }

  final GetListLibraryPluginUseCase _getListLibraryPluginUseCase;
  final GetListLocalPluginUseCase _getListLocalPluginUseCase;
  final RemoveLocalPluginUseCase _removeLocalPluginUseCase;
  final SaveLocalPluginUseCase _saveLocalPluginUseCase;

  Future<void> _onStarted(_Started event, Emitter<ExtensionState> emit) async {
    final listLocalPlugin = (await _getListLocalPluginUseCase.call(GetListLocalPluginInput())).data;
    emit(state.copyWith(listLocalPlugin: listLocalPlugin));
    final listLibraryPlugin =
        (await _getListLibraryPluginUseCase.call(GetListLibraryPluginInput())).data;
    emit(state.copyWith(listLibraryPlugin: listLibraryPlugin));
  }

  void _onToggleSearchModeConfirmed(
    _ToggleSearchModeConfirmed event,
    Emitter<ExtensionState> emit,
  ) {
    emit(state.copyWith(isSearchMode: !state.isSearchMode));
  }

  void _onSearchTextChanged(
    _SearchTextChanged event,
    Emitter<ExtensionState> emit,
  ) {
    emit(state.copyWith(searchText: event.text));
  }

  Future<void> _onRemoveButtonPressed(
    _RemoveButtonPressed event,
    Emitter<ExtensionState> emit,
  ) async {
    try {
      final item = state.localPlugins[event.index];
      await _removeLocalPluginUseCase.call(RemoveLocalPluginInput(item.id));
      emit(
        state.copyWith(
          listLocalPlugin: state.listLocalPlugin.where((element) => element != item).toList(),
        ),
      );
      final listLibraryPlugin =
          (await _getListLibraryPluginUseCase.call(GetListLibraryPluginInput())).data;
      emit(state.copyWith(listLibraryPlugin: listLibraryPlugin));
    } catch (e, s) {
      logD('$e,$s');
    }
  }

  Future<void> _onDownLoadButtonPressed(
    _DownLoadButtonPressed event,
    Emitter<ExtensionState> emit,
  ) async {
    try {
      final item = state.libraryPlugins[event.index];
      await _saveLocalPluginUseCase.call(SaveLocalPluginInput(item));
      emit(
        state.copyWith(
          listLibraryPlugin: state.libraryPlugins.where((element) => element != item).toList(),
        ),
      );
      final listLocalPlugin =
          (await _getListLocalPluginUseCase.call(GetListLocalPluginInput())).data;
      emit(state.copyWith(listLocalPlugin: listLocalPlugin));
    } catch (e, s) {
      logE('$e,$s');
    }
  }
}
