import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app.dart';
import 'cubit/home_cubit.dart';

@RoutePage()
class HomePage extends StatefulWidget implements AutoRouteWrapper {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: this,
    );
  }
}

class _HomePageState extends State<HomePage> {
  HomeCubit get cubit => context.read<HomeCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            cubit.builder((state) => Text('${state}'), onLoading: Text('Loading ')),
      ),
      floatingActionButton: IconButton(
          onPressed: () => cubit.random(),
          icon: Icon(CupertinoIcons.rectangle_arrow_up_right_arrow_down_left)),
    );
  }
}
