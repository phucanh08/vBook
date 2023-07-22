// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plugin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PluginDto _$$_PluginDtoFromJson(Map<String, dynamic> json) => _$_PluginDto(
      name: json['name'] as String?,
      author: json['author'] as String?,
      path: json['path'] as String?,
      version: json['version'] as num?,
      source: json['source'] as String?,
      icon: json['icon'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      locale: json['locale'] as String?,
      tag: json['tag'] as String?,
    );

Map<String, dynamic> _$$_PluginDtoToJson(_$_PluginDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'author': instance.author,
      'path': instance.path,
      'version': instance.version,
      'source': instance.source,
      'icon': instance.icon,
      'description': instance.description,
      'type': instance.type,
      'locale': instance.locale,
      'tag': instance.tag,
    };
