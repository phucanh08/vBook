import '../../../app.dart';
import '../bloc/detail_chapter_bloc.dart';

class DetailChapterBody extends StatelessWidget {
  const DetailChapterBody({
    required this.onVisibleAppBarChanged,
    required this.onHorizontalDragged,
    required this.child,
    required this.visibleAppBar,
    super.key,
  });

  final void Function(bool visible) onVisibleAppBarChanged;
  final void Function(HorizontalDraggedEnum type) onHorizontalDragged;
  final Widget child;
  final bool visibleAppBar;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanDown: (_) {
        if (visibleAppBar) {
          onVisibleAppBarChanged.call(false);
        }
      },
      onDoubleTap: () {
        if (!visibleAppBar) {
          onVisibleAppBarChanged.call(true);
        }
      },
      onHorizontalDragEnd: (dragEndDetails) {
        final type = HorizontalDraggedEnum.fromPrimaryVelocity(
          dragEndDetails.primaryVelocity ?? 0.0,
        );
        onHorizontalDragged.call(type);
      },
      child: SafeArea(
        bottom: false,
        child: child,
      ),
    );
  }
}
