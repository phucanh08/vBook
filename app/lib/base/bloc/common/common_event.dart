part of 'common_bloc.dart';

@freezed
class CommonEvent extends BaseEvent with _$CommonEvent {
  const factory CommonEvent.exceptionEmitted({
    required AppExceptionWrapper appExceptionWrapper,
  }) = ExceptionEmitted;

  const factory CommonEvent.loadingVisibilityEmitted({
    required bool isLoading,
  }) = LoadingVisibilityEmitted;

  const factory CommonEvent.forceLogoutButtonPressed({
    @Default(false) bool isLoading,
  }) = ForceLogoutButtonPressed;
}
