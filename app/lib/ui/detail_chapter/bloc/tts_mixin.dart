part of 'detail_chapter_bloc.dart';

enum TTSEvent {
  play,
  pause,
  stop,
  resume,
  next,
  previous,
  nextStep,
  previousStep,
}

enum TTSStatus { playing, pause, none }

class TTSState {
  const TTSState({this.currentIndex = 0, this.status = TTSStatus.none});

  TTSState copyWith({int? currentIndex, TTSStatus? status}) {
    return TTSState(
      currentIndex: currentIndex ?? this.currentIndex,
      status: status ?? this.status,
    );
  }

  final int currentIndex;
  final TTSStatus status;
}

mixin TTSMixin on BaseBloc<DetailChapterEvent, DetailChapterState> {
  final _playUseCase = getIt<PlayUseCase>();
  final _stopUseCase = getIt<StopUseCase>();

  Future<void> _onTTSEvent(_TTSEvent event, Emitter<DetailChapterState> emit) {
    switch (event.event) {
      case TTSEvent.play:
        return _onPlayButtonPressed.call(emit);
      case TTSEvent.pause:
        return _onPauseButtonPressed.call(emit);
      case TTSEvent.stop:
        return _onStopButtonPressed.call(emit);
      case TTSEvent.resume:
        return _onResumeButtonPressed.call(emit);
      case TTSEvent.next:
        return _onNextButtonPressed.call(emit);
      case TTSEvent.previous:
        return _onPreviousButtonPressed.call(emit);
      case TTSEvent.nextStep:
        return _onNextStepButtonPressed.call(emit);
      case TTSEvent.previousStep:
        return _onPreviousStepButtonPressed.call(emit);
    }
  }

  Future<void> _onPlayButtonPressed(Emitter<DetailChapterState> emit) {
    return runBlocCatching(
      action: () => _play(emit),
      handleLoading: false,
    );
  }

  Future<void> _play(Emitter<DetailChapterState> emit) {
    return runBlocCatching(
      action: () async {
        emit(state.copyWith(
          ttsState: state.ttsState.copyWith(status: TTSStatus.playing),
        ));
        int index = state.ttsState.currentIndex;
        for (var e in state.model?.contents ?? []) {
          if (state.ttsState.status != TTSStatus.playing) {
            return;
          }
          await _playUseCase.call(PlayInput(e));
          emit(state.copyWith(
            ttsState: state.ttsState.copyWith(currentIndex: index++),
          ));
        }
      },
      handleLoading: false,
    );
  }

  Future<void> _onStopButtonPressed(Emitter<DetailChapterState> emit) {
    return runBlocCatching(
      action: () async {
        emit(state.copyWith(
          ttsState: state.ttsState.copyWith(status: TTSStatus.none),
        ));
        await _stopUseCase.call(StopInput());
      },
      handleLoading: false,
    );
  }

  Future<void> _onPauseButtonPressed(Emitter<DetailChapterState> emit) {
    return runBlocCatching(
      action: () async {
        emit(state.copyWith(
          ttsState: state.ttsState.copyWith(status: TTSStatus.pause),
        ));
        await _stopUseCase.call(StopInput());
      },
      handleLoading: false,
    );
  }

  Future<void> _onResumeButtonPressed(Emitter<DetailChapterState> emit) {
    return runBlocCatching(
      action: () => _play(emit),
      handleLoading: false,
    );
  }

  Future<void> _onNextButtonPressed(Emitter<DetailChapterState> emit) {
    return runBlocCatching(
      action: () async {
        await _stopUseCase.call(StopInput());
        emit(state.copyWith(
          ttsState: state.ttsState.copyWith(
            status: TTSStatus.pause,
            currentIndex: state.ttsState.currentIndex + 1,
          ),
        ));
        await _play(emit);
      },
      handleLoading: false,
    );
  }

  Future<void> _onPreviousButtonPressed(Emitter<DetailChapterState> emit) {
    return runBlocCatching(
      action: () async {
        await _stopUseCase.call(StopInput());
        emit(state.copyWith(
          ttsState: state.ttsState.copyWith(
            status: TTSStatus.pause,
            currentIndex: state.ttsState.currentIndex - 1,
          ),
        ));
        await _play(emit);
      },
      handleLoading: false,
    );
  }

  Future<void> _onNextStepButtonPressed(Emitter<DetailChapterState> emit) {
    return runBlocCatching(
      action: () async {},
      handleLoading: false,
    );
  }

  Future<void> _onPreviousStepButtonPressed(Emitter<DetailChapterState> emit) {
    return runBlocCatching(
      action: () async {},
      handleLoading: false,
    );
  }
}
