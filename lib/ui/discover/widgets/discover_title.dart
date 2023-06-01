import 'package:flutter/material.dart';
import 'package:resources/resources.dart';
import 'package:shared/shared.dart';

class DiscoverTitle extends StatelessWidget {
  const DiscoverTitle({
    required this.onPressed,
    required this.iconUrl,
    required this.name,
    super.key,
  });

  final Func0<void> onPressed;
  final String iconUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed.call(),
      child: Row(
        children: [
          Image.network(
            iconUrl,
            width: 30,
            height: 30,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 5),
          Flexible(child: Text(name)),
          const SizedBox(width: 5),
          const FaIcon(FaCodePoint.angleDown, type: IconType.regular),
        ],
      ),
    );
  }
}
