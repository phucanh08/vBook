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
  DetailNovelBloc() : super(const DetailNovelState()) {
    on<_Started>(_onStarted);
  }

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
}
