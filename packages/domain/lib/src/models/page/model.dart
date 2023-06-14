import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class PageModel with _$PageModel {
  const PageModel._();
  const factory PageModel({
    required String name,
    required String link,
    required String cover,
    required String description,
    required String host,
  }) = _PageModel;
}
