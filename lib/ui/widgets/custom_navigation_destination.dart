import 'package:flutter/material.dart';
import 'package:resources/resources.dart';

class CustomNavigationDestination extends NavigationDestination {
  CustomNavigationDestination({
    required FaCodePoint faCodePoint,
    required super.label,
    super.key,
  }) : super(
          icon: FaIcon(
            faCodePoint,
            type: IconType.light,
          ),
          selectedIcon: FaIcon(
            faCodePoint,
            type: IconType.regular,
          ),
        );
}
