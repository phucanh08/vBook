import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../app.dart';

part 'individual_event.dart';
part 'individual_state.dart';
part 'individual_bloc.freezed.dart';

@injectable
class IndividualBloc extends BaseBloc<IndividualEvent, IndividualState> {
  IndividualBloc() : super(const IndividualState()) {
    on<IndividualEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
