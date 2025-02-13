import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<int> with BlocBaseMixin<int> {
  HomeCubit() : super(0);

  Future<void> random() async {
    updateLoading();
    await Future.delayed(const Duration(seconds: 2));
    final random = Random();
    final randomNumber = random.nextInt(100);
    emit(randomNumber);
    updateSuccess();
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
  }
}


enum RxStatus { loading, success, error, empty }

mixin BlocBaseMixin<State> on BlocBase<State> {
  final _status = ValueNotifier(RxStatus.loading);

  void updateLoading() => _status.value = RxStatus.loading;
  void updateSuccess() => _status.value = RxStatus.success;

  @override
  Future<void> close() async {
    _status.dispose();
    return super.close();
  }
}

extension BlocBaseExtension<State> on BlocBaseMixin<State> {
  Widget builder(
    Widget Function(State state) widget, {
    Widget Function(String? error)? onError,
    Widget? onLoading,
    Widget? onEmpty,
  }) {
    return ValueListenableBuilder(
      valueListenable: _status,
      builder: (_, value, child) => switch (value) {
        RxStatus.loading => onLoading ?? const CircularProgressIndicator(),
        RxStatus.success => child!,
        RxStatus.error => throw UnimplementedError(),
        RxStatus.empty => throw UnimplementedError(),
      },
      child: BlocBuilder(
        bloc: this,
        builder: (_, State state) => widget(state),
      ),
    );
  }
}
