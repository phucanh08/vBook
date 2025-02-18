import 'package:flutter/widgets.dart';

class ObxValue<T> extends StatefulWidget {
  final Widget Function(ValueNotifier<T>) builder;
  final T initialData;

  const ObxValue(this.builder, this.initialData, {super.key});

  @override
  ObxState<T> createState() => ObxState<T>();
}

class ObxState<T> extends State<ObxValue<T>> {
  late final state = ValueNotifier<T>(widget.initialData);

  @override
  void initState() {
    state.addListener(_valueChanged);
    super.initState();
  }

  void _valueChanged() => setState(() {});

  @override
  void dispose() {
    state.removeListener(_valueChanged);
    state.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.builder(state);
}