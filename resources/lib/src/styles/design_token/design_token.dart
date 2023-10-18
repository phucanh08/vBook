import 'package:flutter/material.dart';

part 'elevation_token.dart';
part 'icon_size_token.dart';
part 'radius_token.dart';
part 'space_token.dart';

extension DesignTokens on ThemeData {
  SpaceToken get space => SpaceToken.instance();
  IconSizeToken get iconSize => IconSizeToken.instance();
  RadiusToken get radius => RadiusToken.instance();
  ElevationToken get elevation => ElevationToken.instance();
}
