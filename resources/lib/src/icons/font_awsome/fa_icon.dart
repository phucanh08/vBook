import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

part 'fa_codepoint.dart';

enum IconType {
  solid('FontAwesomeSolid'),
  sharpSolid('FontAwesomeSharpSolid'),
  duoTone('FontAwesomeDuoTone'),
  brand('FontAwesomeBrand'),
  regular('FontAwesomeRegular'),
  light('FontAwesomeLight'),
  thin('FontAwesomeThin');

  final String fontFamily;

  const IconType(this.fontFamily);
}

const fontPackage = 'resources';

class FaIcon extends StatelessWidget {
  const FaIcon(
    this.faCodePoint, {
    this.type = IconType.solid,
    this.size,
    this.color,
    this.semanticLabel,
    this.textDirection,
    this.shadows,
    super.key,
  });

  final FaCodePoint faCodePoint;
  final IconType type;
  final double? size;
  final Color? color;
  final String? semanticLabel;
  final TextDirection? textDirection;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    assert(this.textDirection != null || debugCheckHasDirectionality(context));
    final TextDirection textDirection = this.textDirection ?? Directionality.of(context);

    final IconThemeData iconTheme = IconTheme.of(context);

    final double iconSize = size ?? iconTheme.size ?? 24;

    final List<Shadow>? iconShadows = shadows ?? iconTheme.shadows;

    final double iconOpacity = iconTheme.opacity ?? 1.0;
    Color iconColor = color ?? iconTheme.color!;
    if (iconOpacity != 1.0) {
      iconColor = iconColor.withOpacity(iconColor.opacity * iconOpacity);
    }

    final iconWidget = RichText(
      overflow: TextOverflow.visible,
      // Never clip.
      textDirection: textDirection,
      // Since we already fetched it for the assert...
      text: TextSpan(
        text: String.fromCharCode(faCodePoint.codePoint),
        style: TextStyle(
          inherit: false,
          color: iconColor,
          fontSize: iconSize * 0.75,
          fontFamily: type.fontFamily,
          package: fontPackage,
          shadows: iconShadows,
        ),
      ),
    );

    return Semantics(
      label: semanticLabel,
      child: ExcludeSemantics(
        child: SizedBox(
          width: iconSize,
          height: iconSize,
          child: Center(
            child: iconWidget,
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IconDataProperty(
        'icon',
        IconData(faCodePoint.codePoint,
            fontFamily: type.fontFamily, fontPackage: 'base_bloc_project'),
        ifNull: '<empty>',
        showName: false));
    properties.add(DoubleProperty('size', size, defaultValue: null));
    properties.add(ColorProperty('color', color, defaultValue: null));
    properties.add(IterableProperty<Shadow>('shadows', shadows, defaultValue: null));
  }
}
