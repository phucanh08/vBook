import 'package:flutter/material.dart';

class AdjustableScrollController extends ScrollController {
  AdjustableScrollController({
    this.onPageChanged,
    this.enableAdjustableScroll = false,
    this.scrollSpeed = 40,
  }) {
    super.addListener(onScroll);
  }

  void updateScrollPosition(double percent) {
    jumpTo(percent * super.position.maxScrollExtent / 100);
  }

  void onScroll() {
    if (super.position.viewportDimension <= 0) {
      return;
    }
    updatePage();
    if (enableAdjustableScroll) {
      final scrollEnd = super.offset + scrollSpeed;
      if (scrollEnd < super.position.maxScrollExtent) {
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

  void Function(
    int currentPage,
    int totalPage,
    double percent,
  )? onPageChanged;

  void changeAdjustableScroll() {
    enableAdjustableScroll = !enableAdjustableScroll;
    if (enableAdjustableScroll) {
      final scrollEnd = super.offset + scrollSpeed;
      if (scrollEnd < super.position.maxScrollExtent) {
        animateTo(
          scrollEnd,
          duration: const Duration(milliseconds: 300),
          curve: Curves.bounceIn,
        );
      }
    }
  }

  void updatePage() {
    final int currentPage = super.position.viewportDimension > 0
        ? (super.offset / super.position.viewportDimension).ceil()
        : 0;
    final int totalPage = super.position.viewportDimension > 0
        ? (super.position.maxScrollExtent / super.position.viewportDimension)
        .ceil()
        : 0;
    final double percent = super.position.maxScrollExtent > 0
        ? (super.offset / super.position.maxScrollExtent) * 100
        : 0;

    onPageChanged?.call(currentPage, totalPage, percent);
  }

  void disable() => super.removeListener(onScroll);
}
