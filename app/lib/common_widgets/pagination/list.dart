part of 'pagination.dart';

/// ListView that once the bottom is reach call [nextData] to load more element until [hasNext] is false
/// Use [loadingWidget] to have a custom loading widget
class InfiniteListView extends PaginationWidget {
  /// ListView that once the bottom is reach call [nextData] to load more element until [hasNext] is false
  /// Use [loadingWidget] to have a custom loading widget
  const InfiniteListView({
    required this.itemBuilder,
    required this.itemCount,
    required this.nextData,
    required this.hasNext,
    super.key,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.padding,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    this.controller,
    this.primary,
    this.physics,
    this.shrinkWrap = false,
    this.loadingWidget,
    this.scrollThreshold = 300,
  })  : _separated = false,
        _separatorBuilder = null,
        semanticChildCount = null,
        itemExtent = null;

  /// ListView that once the bottom is reach call [nextData] to load more element until [hasNext] is false
  /// Use [loadingWidget] to have a custom loading widget
  /// This constructor allow a [separatorBuilder] for you to add a divider or equivalent
  const InfiniteListView.separated({
    required this.itemBuilder,
    required this.itemCount,
    required this.hasNext,
    required this.nextData,
    required Function(BuildContext, int) separatorBuilder,
    super.key,
    this.semanticChildCount,
    this.itemExtent,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.padding,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    this.controller,
    this.primary,
    this.physics,
    this.shrinkWrap = false,
    this.loadingWidget,
    this.scrollThreshold = 300,
  })  : _separated = true,
        _separatorBuilder = separatorBuilder as Widget Function(BuildContext, int)?;

  final double scrollThreshold;
  final void Function() nextData;
  final bool hasNext;
  final Widget? loadingWidget;
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;
  final bool _separated;
  final IndexedWidgetBuilder? _separatorBuilder;
  final Axis scrollDirection;
  final bool reverse;
  final ScrollController? controller;
  final bool? primary;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final EdgeInsetsGeometry? padding;
  final bool addAutomaticKeepAlives;
  final bool addRepaintBoundaries;
  final bool addSemanticIndexes;
  final double? cacheExtent;
  final int? semanticChildCount;
  final double? itemExtent;

  @override
  State<StatefulWidget> createState() {
    return _InfiniteListViewState();
  }
}

class _InfiniteListViewState extends State<InfiniteListView> {
  late ScrollController _scrollController;
  int? _lastLoadedEvent;

  @override
  void initState() {
    _scrollController = widget.controller ?? ScrollController();
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    if (widget.controller == null) {
      _scrollController.dispose();
    }
    super.dispose();
  }

  @override
  void didUpdateWidget(InfiniteListView oldWidget) {
    if (oldWidget.itemCount != widget.itemCount) {
      _lastLoadedEvent = null;
    }
    if (oldWidget.controller != widget.controller) {
      _scrollController.removeListener(_onScroll);
      if (oldWidget.controller == null) {
        _scrollController.dispose();
      }
      _scrollController = widget.controller ?? ScrollController();
      _scrollController.addListener(_onScroll);
    }
    super.didUpdateWidget(oldWidget);
  }

  bool _hasScroll() {
    return _scrollController.position.haveDimensions &&
        _scrollController.position.maxScrollExtent > 0;
  }

  @override
  Widget build(BuildContext context) {
    final itemBuilder = (BuildContext context, int index) {
      if (!_hasScroll() &&
          index == widget.itemCount &&
          _lastLoadedEvent == null &&
          widget.hasNext) {
        _lastLoadedEvent = widget.itemCount;
        WidgetsBinding.instance.addPostFrameCallback((_) => widget.nextData());
      }

      if (index == widget.itemCount) {
        return widget.loadingWidget ??
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircularProgressIndicator(),
              ),
            );
      }

      return widget.itemBuilder(context, index);
    };

    return widget._separated
        ? ListView.separated(
            itemBuilder: itemBuilder,
            controller: _scrollController,
            scrollDirection: widget.scrollDirection,
            reverse: widget.reverse,
            padding: widget.padding,
            addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
            addRepaintBoundaries: widget.addRepaintBoundaries,
            addSemanticIndexes: widget.addSemanticIndexes,
            cacheExtent: widget.cacheExtent,
            primary: widget.primary,
            physics: widget.physics,
            shrinkWrap: widget.shrinkWrap,
            separatorBuilder: widget._separatorBuilder!,
            itemCount: widget.hasNext ? widget.itemCount + 1 : widget.itemCount,
          )
        : ListView.builder(
            itemBuilder: itemBuilder,
            controller: _scrollController,
            scrollDirection: widget.scrollDirection,
            reverse: widget.reverse,
            itemExtent: widget.itemExtent,
            padding: widget.padding,
            semanticChildCount: widget.semanticChildCount,
            addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
            addRepaintBoundaries: widget.addRepaintBoundaries,
            addSemanticIndexes: widget.addSemanticIndexes,
            cacheExtent: widget.cacheExtent,
            primary: widget.primary,
            physics: widget.physics,
            shrinkWrap: widget.shrinkWrap,
            itemCount: widget.hasNext ? widget.itemCount + 1 : widget.itemCount,
          );
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll - currentScroll <= widget.scrollThreshold &&
        _lastLoadedEvent == null &&
        widget.hasNext) {
      _lastLoadedEvent = widget.itemCount;
      widget.nextData();
    }
  }
}
