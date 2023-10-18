import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../app.dart';

part 'detail_novel_event.dart';

part 'detail_novel_state.dart';

part 'detail_novel_bloc.freezed.dart';

@injectable
class DetailNovelBloc extends BaseBloc<DetailNovelEvent, DetailNovelState> {
  DetailNovelBloc(this._saveNovelUseCase) : super(const DetailNovelState()) {
    on<_Started>(_onStarted, transformer: log());
    on<_AddToShelfButtonPressed>(_onAddToShelfButtonPressed, transformer: log());
  }

  final SaveNovelUseCase _saveNovelUseCase;

  Future<void> _onStarted(_Started event, Emitter<DetailNovelState> emit) {
    return runBlocCatching(action: () async {
      final response = await getIt<GetDetailNovelUseCase>().call(
        GetDetailNovelInput(
          id: event.id,
          endpoint: event.endpoint,
        ),
      );
      emit(state.copyWith(model: response.data));
    });
  }

  Future<void> _onAddToShelfButtonPressed(_AddToShelfButtonPressed event, emit) {
    return runBlocCatching(action: () {
      return _saveNovelUseCase.call(
        SaveNovelInput(
          sourceId: event.id,
          novelEndpoint: event.endpoint,
          inShelf: true,
          chapterEndpoint: state.model!.firstChapterEndpoint,
          currentChapterName: state.model!.firstChapterName,
        ),
      );
    });
  }
}
