import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../app.dart';

part 'browser_event.dart';
part 'browser_state.dart';
part 'browser_bloc.freezed.dart';

@injectable
class BrowserBloc extends BaseBloc<BrowserEvent, BrowserState> {
  BrowserBloc() : super(const BrowserState()) {
    on<BrowserEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
