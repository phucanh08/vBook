import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shared/shared.dart';

import '../exception_handler/exception_handler.dart';
import 'bloc/base_bloc.dart';

class BlocViewBuilder<B extends BlocBaseMixin<Object?>> extends BlocView<B> {
  const BlocViewBuilder({required this.create, required this.builder, super.key});

  final Widget Function(BuildContext context) builder;
  final B Function(BuildContext context) create;

  @override
  Widget build(BuildContext context) => builder(context);

  @override
  B createBloc(BuildContext context) => create(context);
}

abstract class BlocView<B extends BlocBaseMixin<Object?>> extends StatefulWidget
    with LogMixin {
  const BlocView({super.key});

  @protected
  B createBloc(BuildContext context);

  @protected
  void onInit() {}

  @protected
  void onClose() {}

  @protected
  Widget build(BuildContext context);

  @protected
  Widget buildListeners({required Widget child}) => child;

  BuildContext get context => createState().context;

  @protected
  Widget buildLoading() =>
      const Center(child: CircularProgressIndicator.adaptive());

  @protected
  void handleException(Exception exception) {
    // TODO(anhlp): xử lý logic lỗi show dialog.
  }

  @protected
  String handleExceptionMessage(AppException appException) {
    return const ExceptionMessageMapper().map(appException);
  }

  @override
  BlocViewState<B> createState() => BlocViewState<B>();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<Function>.has('builder', build));
  }
}

class BlocViewState<B extends BlocBaseMixin<Object?>>
    extends State<BlocView<B>> {
  @override
  void initState() {
    super.initState();
    widget.onInit();
  }

  @override
  void dispose() {
    widget.onClose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<B>(
      create: (context) =>
          widget.createBloc(context)..onException = widget.handleException,
      child: Builder(
        builder: (context) {
          final bloc = context.read<B>();

          return widget.buildListeners(
            child: Stack(
              children: [
                widget.build(context),
                ValueListenableBuilder(
                  valueListenable: bloc.isLoading,
                  builder: (context, isLoading, child) => Visibility(
                    visible: isLoading,
                    child: child ?? widget.buildLoading(),
                  ),
                  child: widget.buildLoading(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
