import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class HomeModel with _$HomeModel {
  const HomeModel._();
  const factory HomeModel({
    required String title,
    required String input,
  }) = _HomeModel;
}
