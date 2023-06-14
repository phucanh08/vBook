import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../app.dart';

part 'discover_tab_event.dart';
part 'discover_tab_state.dart';
part 'discover_tab_bloc.freezed.dart';

typedef DiscoverTabStarted = PaginationStarted<String>;
typedef DiscoverTabNextPage = PaginationNextPage<String>;
typedef DiscoverTabRefreshed = PaginationRefreshed<String>;

@injectable
class DiscoverTabBloc extends PaginationBloc<PageModel, String, DiscoverTabState> {
  DiscoverTabBloc() : super(const DiscoverTabState()) {
    on<_Started>(_onStarted);
  }

  void _onStarted(_Started event, Emitter<DiscoverTabState> emit) {

  }
}
