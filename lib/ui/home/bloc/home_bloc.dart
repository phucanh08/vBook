import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../app.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

@Injectable()
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<HomePageStarted>(_onHomePageInitiated, transformer: log());
    on<NavigationBarDestinationSelected>(
      _onNavigationBarDestinationSelected,
      transformer: log(),
    );
  }

  void _onHomePageInitiated(HomePageStarted event, Emitter<HomeState> emit) {
    // Xin hãy ghi nhớ đặt tên Event theo convention:
    // <Tên Widget><Verb ở dạng Quá khứ>. VD: LoginButtonPressed, EmailTextFieldChanged, HomePageRefreshed
  }

  void _onNavigationBarDestinationSelected(
    NavigationBarDestinationSelected event,
    Emitter<HomeState> emit,
  ) {
    switch (event.index) {
      case 1:
        navigator.push(const DiscoverRoute());
        break;
      case 2:
        navigator.push(const CommunityRoute());
        break;
      case 3:
        navigator.push(const IndividualRoute());
        break;
    }
  }
}
