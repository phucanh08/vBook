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
    String? icon,
    String? description,
    String? type,
    String? locale,
    String? tag,
  }) = _PluginDto;

  factory PluginDto.fromJson(Map<String, Object?> json) => _$PluginDtoFromJson(json);

  PluginDto merge(PluginDto other) {
    return copyWith(
      name: other.name ?? name,
      author: other.author ?? author,
      path: other.path ?? path,
      version: other.version ?? version,
      source: other.source ?? source,
      icon: other.icon ?? icon,
      description: other.description ?? description,
      type: other.type ?? type,
      locale: other.locale ?? locale,
      tag: other.tag ?? tag,
    );
  }
}
