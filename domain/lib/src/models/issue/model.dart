import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

enum IssueStatus { opened, closed, skipped }

@freezed
class Issue with _$Issue {
  const Issue._();

  const factory Issue({
    required int id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required int createdBy,
    required int updatedBy,
    required IssueStatus status,
    required String title,
    required String reproductionStep,
    required String expectedResult,
    required String actualResult,
    required String appVersion,
    required String deviceInformation,
    @Default(0) int numOfComments,
  }) = _Issue;
}
