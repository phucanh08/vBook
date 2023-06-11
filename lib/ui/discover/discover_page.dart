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
        titleSpacing: -10,
        title: BlocBuilder<DiscoverBloc, DiscoverState>(
          builder: (context, state) {
            return state.currentPlugin == null
                ? const SizedBox()
                : DiscoverTitle(
                    onPressed: Func0(
                      () => bloc.add(const DiscoverEvent.titlePressed()),
                    ),
                    iconUrl: state.currentPlugin!.icon,
                    name: state.currentPlugin!.name,
                  );
          },
        ),
        onSearchButtonPressed: Func0(() => null),
        onMoreButtonPressed: Func0(() => null),
      ),
    );
  }
}
