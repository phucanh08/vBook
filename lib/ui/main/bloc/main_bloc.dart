import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../app.dart';

part 'main_event.dart';

part 'main_state.dart';

part 'main_bloc.freezed.dart';

@Injectable()
class MainBloc extends BaseBloc<MainEvent, MainState> {
  MainBloc() : super(MainState.initial()) {
    on<MainPageStarted>(
      _onMainPageInitiated,
      transformer: log(),
    );
  }

  void _onMainPageInitiated(MainPageStarted event, Emitter<MainState> emit) {
    // Xin hãy ghi nhớ đặt tên Event theo convention:
    // <Tên Widget><Verb ở dạng Quá khứ>. VD: LoginButtonPressed, EmailTextFieldChanged, HomePageRefreshed
  }
}
