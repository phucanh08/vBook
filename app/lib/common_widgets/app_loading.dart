import 'dart:math';

import 'package:flutter/material.dart';
import 'package:resources/resources.dart';

class AppLoading extends StatefulWidget {
  const AppLoading({super.key});

  @override
  State<AppLoading> createState() => _AppLoadingState();
}

class _AppLoadingState extends State<AppLoading> with TickerProviderStateMixin {
  late final Animation<double> _arrowAnimation;
  late final  AnimationController _arrowAnimationController;

  @override
  void initState() {
    super.initState();
    _arrowAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat();
    _arrowAnimation =
        Tween(begin: 0.0, end: pi * 2).animate(_arrowAnimationController);
  }

  @override
  void dispose() {
    _arrowAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _arrowAnimationController,
      builder: (context, child) => Transform.rotate(
        angle: _arrowAnimation.value,
        child: Assets.icons.loading.svg(
          width: 80,
          height: 80,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
