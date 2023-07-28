import 'package:flutter/material.dart';

class AdjustableScrollController extends ScrollController {
  AdjustableScrollController({
    required this.onPageChanged,
    this.enableAdjustableScroll = false,
    this.scrollSpeed = 40,
  }) {
    super.addListener(onScroll);
  }

  void onScroll() {
    // final scrollDirection = super.position.userScrollDirection;
    final int currentPage =
        (super.offset / super.position.viewportDimension).ceil();
    final int totalPage =
        (super.position.maxScrollExtent / super.position.viewportDimension)
            .ceil();
    final double percent =
        (super.offset / super.position.maxScrollExtent) * 100;

    onPageChanged.call(currentPage, totalPage, percent);
    if (enableAdjustableScroll) {
      final scrollEnd = super.offset + scrollSpeed;
      if(scrollEnd < super.position.maxScrollExtent) {
        animateTo(
          scrollEnd,
          duration: const Duration(milliseconds: 300),
          curve: Curves.bounceIn,
        );
      }
      // if (scrollDirection != ScrollDirection.idle) {
      //   final scrollEnd = super.offset + scrollSpeed;
            // (scrollDirection == ScrollDirection.reverse
            //     ? scrollSpeed
            //     : -scrollSpeed);
        // scrollEnd = min(super.position.maxScrollExtent,
        //     max(super.position.minScrollExtent, scrollEnd));
        // if(scrollEnd < super.position.maxScrollExtent) {
        //   animateTo(
        //     scrollEnd,
        //     duration: const Duration(milliseconds: 300),
        //     curve: Curves.bounceIn,
        //   );
        // }
      // }
    }
  }

  bool enableAdjustableScroll;
  double scrollSpeed;

  final void Function(
    int currentPage,
    int totalPage,
    double percent,
  ) onPageChanged;

  void changeAdjustableScroll() {
    enableAdjustableScroll = !enableAdjustableScroll;
    if(enableAdjustableScroll) {
      final scrollEnd = super.offset + scrollSpeed;
      if(scrollEnd < super.position.maxScrollExtent) {
        animateTo(
          scrollEnd,
          duration: const Duration(milliseconds: 300),
          curve: Curves.bounceIn,
        );
      }
    }
  }

  void updatePage() {
    final int currentPage =
    (super.offset / super.position.viewportDimension).ceil();
    final int totalPage =
    (super.position.maxScrollExtent / super.position.viewportDimension)
        .ceil();
    final double percent =
        (super.offset / super.position.maxScrollExtent) * 100;

    onPageChanged.call(currentPage, totalPage, percent);
  }

  void disable() => super.removeListener(onScroll);
}
