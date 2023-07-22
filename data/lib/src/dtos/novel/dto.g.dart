// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NovelDetailDto _$$_NovelDetailDtoFromJson(Map<String, dynamic> json) =>
    _$_NovelDetailDto(
      name: json['name'] as String?,
      imgUrl: json['imgUrl'] as String?,
      host: json['host'] as String?,
      author: json['author'] as String?,
      description: json['description'] as String?,
      detail: json['detail'] as String?,
    );

Map<String, dynamic> _$$_NovelDetailDtoToJson(_$_NovelDetailDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'imgUrl': instance.imgUrl,
      'host': instance.host,
      'author': instance.author,
      'description': instance.description,
      'detail': instance.detail,
    };

_$_NovelItemDto _$$_NovelItemDtoFromJson(Map<String, dynamic> json) =>
    _$_NovelItemDto(
      name: json['name'] as String?,
      link: json['link'] as String?,
      imgUrl: json['imgUrl'] as String?,
      description: json['description'] as String?,
      host: json['host'] as String?,
    );

Map<String, dynamic> _$$_NovelItemDtoToJson(_$_NovelItemDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'link': instance.link,
      'imgUrl': instance.imgUrl,
      'description': instance.description,
      'host': instance.host,
    };
