import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app.dart';

part 'detail_novel_event.dart';
part 'detail_novel_state.dart';
part 'detail_novel_bloc.freezed.dart';

class DetailNovelBloc extends BaseBloc<DetailNovelEvent, DetailNovelState> {
  DetailNovelBloc() : super(const DetailNovelState()) {
    on<DetailNovelEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
