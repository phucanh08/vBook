import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/shared.dart';

import '../../app.dart';
import 'bloc/discover_bloc.dart';
import 'widgets/widgets.dart';

@RoutePage()
class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends BasePageState<DiscoverPage, DiscoverBloc> {
  @override
  void initState() {
    bloc.add(const DiscoverEvent.started());
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: BlocBuilder<DiscoverBloc, DiscoverState>(
          builder: (context, state) {
            return DiscoverTitle(
              onPressed: Func0(
                () => navigator.showModalBottomSheet(
                  AppPopupInfo.chooseSourceBottomSheet(
                    listSource: state.listSource,
                  ),
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  safeArea: false,
                ),
              ),
              iconUrl:
                  'https://raw.githubusercontent.com/Darkrai9x/vbook-extensions/master/bachngocsach/icon.png',
              name: 'Bạch Ngọc Sách',
            );
          },
        ),
        onSearchButtonPressed: Func0(() => null),
        onMoreButtonPressed: Func0(() => null),
      ),
    );
  }
}
