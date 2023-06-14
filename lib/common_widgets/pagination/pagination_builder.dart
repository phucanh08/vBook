part of 'pagination.dart';

class PaginationBuilder<B extends StateStreamable<S>,
    S extends PaginationState<T>, T> extends BlocBuilderBase<B, S> {
  const PaginationBuilder({
    required this.itemBuilder,
    this.onLoading,
    this.onRefreshing,
    this.onEmpty,
    this.onError,
    super.bloc,
    super.buildWhen,
    super.key,
  });

  final WidgetBuilder? onLoading;
  final WidgetBuilder? onRefreshing;
  final Func3<BuildContext, S, List<T>, Widget> itemBuilder;
  final WidgetBuilder? onEmpty;
  final Func1<BuildContext, Widget>? onError;

  @override
  Widget build(context, state) {
    switch (state.status) {
      case PagedStatus.initial:
      case PagedStatus.loading:
        return onLoading?.call(context) ?? const SizedBox.shrink();
      case PagedStatus.refreshing:
        return onRefreshing?.call(context) ??
            onLoading?.call(context) ??
            const SizedBox.shrink();
      case PagedStatus.success:
        return itemBuilder.call(context, state, state.data);
      case PagedStatus.empty:
        return onEmpty?.call(context) ?? const SizedBox.shrink();
      case PagedStatus.failure:
        return onError?.call(context) ?? const SizedBox.shrink();
    }
  }
}
