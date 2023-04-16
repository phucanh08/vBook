import 'package:freezed_annotation/freezed_annotation.dart';

part 'plugin_dto.freezed.dart';

part 'plugin_dto.g.dart';

@freezed
class PluginDto with _$PluginDto {
  const PluginDto._();

  const factory PluginDto({
    String? name,
    String? author,
    String? path,
    num? version,
    String? source,
    String? regexp,
    String? icon,
    String? description,
    String? type,
    String? locale,
    @JsonKey(name: 'script') Map<String, String>? scripts,
  }) = _PluginDto;

  factory PluginDto.fromJson(Map<String, Object?> json) =>
      _$PluginDtoFromJson(json);

  PluginDto merge(PluginDto other) {
    return copyWith(
      name: other.name ?? name,
      author: other.author ?? author,
      path: other.path ?? path,
      version: other.version ?? version,
      source: other.source ?? source,
      regexp: other.regexp ?? regexp,
      icon: other.icon ?? icon,
      description: other.description ?? description,
      type: other.type ?? type,
      locale: other.locale ?? locale,
      scripts: other.scripts ?? scripts,
    );
  }
}
