import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/shared.dart';

import '../../app.dart';

@RoutePage()
class HomePage extends BlocView<CounterCubit> {
  const HomePage({super.key});

  @override
  CounterCubit createBloc(BuildContext context) => CounterCubit();

  @override
  void handleException(Exception exception) {
    WidgetsBinding.instance.addPostFrameCallback((da) {

    });
  }

  @override
  Widget build(BuildContext context) {
    final counter = context.select((CounterCubit cubit) => cubit.state);

    return Scaffold(
      body: Column(
        children: [
          const Text('Loading '),
          Column(
            children: [
              Text(counter.toString()),
              IconButton(
                onPressed: () {
                  context.read<CounterCubit>().increment();
                },
                icon: const Icon(CupertinoIcons.add_circled_solid),
              ),
              IconButton(
                onPressed: () {
                  context.read<CounterCubit>().decrement();
                },
                icon: const Icon(CupertinoIcons.minus_circle_fill),
              ),
            ],
          ),
          ObxValue(
            (data) => Switch(
              value: data.value,
              onChanged: (flag) => data.value = flag,
            ),
            false,
          ),
        ],
      ),
    );
  }
}

class CounterCubit extends Cubit<int> with BlocBaseMixin {
  CounterCubit() : super(0);

  /// Add 1 to the current state.
  // void increment() => emit(state + 1);
  void increment() => runBlocCatching(action: () async {
    throw const RemoteException(kind: RemoteExceptionKind.badCertificate);
  });

  /// Subtract 1 from the current state.
  void decrement() => emit(state - 1);
}
