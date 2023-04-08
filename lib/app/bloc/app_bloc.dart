import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:resources/resources.dart';

import '../../app.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@lazySingleton
class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc() : super(AppState.initial()) {
    on<AppEvent>((event, emit) {
    });
  }
}
