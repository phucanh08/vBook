import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class PluginModel with _$PluginModel {
  const PluginModel._();
  const factory PluginModel({
    required int id,
    required String name,
    required String author,
    required String path,
    required int version,
    required String source,
    required String icon,
    required String description,
    required String type,
    required String locale,
    required String? tag,
  }) = _PluginModel;

  String get languageCode => locale.split('_').first.toUpperCase();
}
