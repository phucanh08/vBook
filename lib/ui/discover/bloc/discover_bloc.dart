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
  DiscoverBloc() : super(const DiscoverState()) {
    on<_Started>(_onStarted);
  }

  Future<void> _onStarted(_Started event, Emitter<DiscoverState> emit) async {
    final currentSource =
        (await GetCurrentSourceUseCase().call(const GetCurrentSourceInput()))
            .data;
    final listSource =
        (await GetListSourceUseCase().call(const GetListSourceInput())).data;
    emit(state.copyWith(currentSource: currentSource, listSource: listSource));
  }
}
