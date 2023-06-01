import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

import '../../../../app.dart';

part 'choose_source_event.dart';

part 'choose_source_state.dart';

part 'choose_source_bloc.freezed.dart';

@injectable
class ChooseSourceBloc extends BaseBloc<ChooseSourceEvent, ChooseSourceState> {
  ChooseSourceBloc() : super(const ChooseSourceState()) {
    on<_Started>(_onStarted);
    on<_Dragged>(_onDragged);
    on<_SearchTextFieldChanged>(_onSearchTextFieldChanged);
  }

  late final DraggableScrollableController dragController;

  void _onStarted(_Started event, Emitter<ChooseSourceState> emit) {
    dragController = event.controller;
    dragController.addListener(() => add(const _Dragged()));
    emit(state.copyWith(listSource: event.listSource));
  }

  void onDestroyed() {
    dragController.removeListener(() => add(const _Dragged()));
  }

  void _onDragged(_Dragged event, Emitter<ChooseSourceState> emit) {
    emit(state.copyWith(
      dragSize: dragController.size > 0.8 ? dragController.size : 0,
    ));
  }

  void _onSearchTextFieldChanged(
    _SearchTextFieldChanged event,
    Emitter<ChooseSourceState> emit,
  ) {
    emit(state.copyWith(searchText: event.searchText));
  }
}
