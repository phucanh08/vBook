import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


mixin BlocBaseMixin<State> on BlocBase<State> {
  final isLoading = ValueNotifier<bool>(false);

  void Function(Exception exception)? onException;

  @override
  Future<void> close() async {
    isLoading.dispose();
    return super.close();
  }

  @protected
  void addException(Exception exception) {
    onException?.call(exception);
  }

  @protected
  void showLoading() => isLoading.value = true;

  @protected
  void hideLoading() => isLoading.value = false;

  @protected
  Future<void> runBlocCatching({
    required Future<void> Function() action,
    Future<void> Function()? doOnRetry,
    Future<void> Function(Exception)? doOnError,
    Future<void> Function()? doOnSubscribe,
    Future<void> Function()? doOnSuccessOrError,
    Future<void> Function()? doOnEventCompleted,
    bool handleLoading = true,
    bool handleError = true,
    String? overrideErrorMessage,
  }) async {
    try {
      await doOnSubscribe?.call();
      if (handleLoading) {
        showLoading();
      }

      await action.call();

      if (handleLoading) {
        hideLoading();
      }
      await doOnSuccessOrError?.call();
    } on Exception catch (e) {
      if (handleLoading) {
        hideLoading();
      }
      await doOnSuccessOrError?.call();
      await doOnError?.call(e);

      if (handleError ) {
        addException(e);
      }
    } finally {
      await doOnEventCompleted?.call();
    }
  }
}
