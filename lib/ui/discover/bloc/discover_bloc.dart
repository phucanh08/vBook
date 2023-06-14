import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../app.dart';

part 'discover_event.dart';

part 'discover_state.dart';

part 'discover_bloc.freezed.dart';

@injectable
class DiscoverBloc extends BaseBloc<DiscoverEvent, DiscoverState> {
  DiscoverBloc(this._getListPluginUseCase, this._updatePluginUseCase,
      this._getListHomeUseCase)
      : super(const DiscoverState()) {
    on<_Started>(_onStarted);
    on<_TitlePressed>(_onTitlePressed);
  }

  final GetListLocalPluginUseCase _getListPluginUseCase;
  final GetListHomeUseCase _getListHomeUseCase;
  final SaveLocalPluginUseCase _updatePluginUseCase;

  Future<void> _onStarted(_Started event, Emitter<DiscoverState> emit) async {
    final listSource =
        (await _getListPluginUseCase.call(GetListLocalPluginInput())).data;
    emit(state.copyWith(listPlugin: listSource));
    if (state.currentPlugin?.path is String) {
      final response = await _getListHomeUseCase
          .call(GetListHomeInput(state.currentPlugin!.path));
      emit(state.copyWith(listHome: response.data));
    }
  }

  Future<void> _onTitlePressed(
    _TitlePressed event,
    Emitter<DiscoverState> emit,
  ) async {
    final result = await navigator.showModalBottomSheet<PluginModel>(
      AppPopupInfo.chooseSourceBottomSheet(
        listPlugin: state.listPlugin,
      ),
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      safeArea: false,
    );

    if (result != null) {
      await _updatePluginUseCase.call(SaveLocalPluginInput(result));
      emit(state.copyWith(listPlugin: [
        result,
        ...state.listPlugin.where((e) => e.name != result.name),
      ]));
    }
  }
}
