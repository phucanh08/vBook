part of 'pagination.dart';

class PaginationBuilder<B extends StateStreamable<S>, S extends PaginationState<T>, T>
    extends BlocBuilderBase<B, S> {
  const PaginationBuilder({
    required this.successBuilder,
    this.loadingBuilder,
    this.refreshingBuilder,
    this.emptyBuilder,
    this.errorBuilder,
    super.bloc,
    super.buildWhen,
    super.key,
  });

  final WidgetBuilder? loadingBuilder;
  final WidgetBuilder? refreshingBuilder;
  final Func3<BuildContext, S, Pagination<T>, Widget> successBuilder;
  final WidgetBuilder? emptyBuilder;
  final Func1<BuildContext, Widget>? errorBuilder;

  @override
  Widget build(context, state) {
    switch (state.status) {
      case PagedStatus.initial:
      case PagedStatus.loading:
      case PagedStatus.refreshing:
      case PagedStatus.success:
        return successBuilder.call(context, state, state.data);
      case PagedStatus.empty:
        return SingleChildScrollView(child: emptyBuilder?.call(context) ?? const SizedBox.shrink());
      case PagedStatus.failure:
        return errorBuilder?.call(context) ?? const SizedBox.shrink();
    }
  }
}
