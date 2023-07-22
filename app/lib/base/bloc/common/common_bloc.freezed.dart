// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppExceptionWrapper appExceptionWrapper)
        exceptionEmitted,
    required TResult Function(bool isLoading) loadingVisibilityEmitted,
    required TResult Function(bool isLoading) forceLogoutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppExceptionWrapper appExceptionWrapper)?
        exceptionEmitted,
    TResult? Function(bool isLoading)? loadingVisibilityEmitted,
    TResult? Function(bool isLoading)? forceLogoutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppExceptionWrapper appExceptionWrapper)? exceptionEmitted,
    TResult Function(bool isLoading)? loadingVisibilityEmitted,
    TResult Function(bool isLoading)? forceLogoutButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceptionEmitted value) exceptionEmitted,
    required TResult Function(LoadingVisibilityEmitted value)
        loadingVisibilityEmitted,
    required TResult Function(ForceLogoutButtonPressed value)
        forceLogoutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceptionEmitted value)? exceptionEmitted,
    TResult? Function(LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult? Function(ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceptionEmitted value)? exceptionEmitted,
    TResult Function(LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult Function(ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonEventCopyWith<$Res> {
  factory $CommonEventCopyWith(
          CommonEvent value, $Res Function(CommonEvent) then) =
      _$CommonEventCopyWithImpl<$Res, CommonEvent>;
}

/// @nodoc
class _$CommonEventCopyWithImpl<$Res, $Val extends CommonEvent>
    implements $CommonEventCopyWith<$Res> {
  _$CommonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExceptionEmittedCopyWith<$Res> {
  factory _$$ExceptionEmittedCopyWith(
          _$ExceptionEmitted value, $Res Function(_$ExceptionEmitted) then) =
      __$$ExceptionEmittedCopyWithImpl<$Res>;
  @useResult
  $Res call({AppExceptionWrapper appExceptionWrapper});
}

/// @nodoc
class __$$ExceptionEmittedCopyWithImpl<$Res>
    extends _$CommonEventCopyWithImpl<$Res, _$ExceptionEmitted>
    implements _$$ExceptionEmittedCopyWith<$Res> {
  __$$ExceptionEmittedCopyWithImpl(
      _$ExceptionEmitted _value, $Res Function(_$ExceptionEmitted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appExceptionWrapper = null,
  }) {
    return _then(_$ExceptionEmitted(
      appExceptionWrapper: null == appExceptionWrapper
          ? _value.appExceptionWrapper
          : appExceptionWrapper // ignore: cast_nullable_to_non_nullable
              as AppExceptionWrapper,
    ));
  }
}

/// @nodoc

class _$ExceptionEmitted implements ExceptionEmitted {
  const _$ExceptionEmitted({required this.appExceptionWrapper});

  @override
  final AppExceptionWrapper appExceptionWrapper;

  @override
  String toString() {
    return 'CommonEvent.exceptionEmitted(appExceptionWrapper: $appExceptionWrapper)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceptionEmitted &&
            (identical(other.appExceptionWrapper, appExceptionWrapper) ||
                other.appExceptionWrapper == appExceptionWrapper));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appExceptionWrapper);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceptionEmittedCopyWith<_$ExceptionEmitted> get copyWith =>
      __$$ExceptionEmittedCopyWithImpl<_$ExceptionEmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppExceptionWrapper appExceptionWrapper)
        exceptionEmitted,
    required TResult Function(bool isLoading) loadingVisibilityEmitted,
    required TResult Function(bool isLoading) forceLogoutButtonPressed,
  }) {
    return exceptionEmitted(appExceptionWrapper);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppExceptionWrapper appExceptionWrapper)?
        exceptionEmitted,
    TResult? Function(bool isLoading)? loadingVisibilityEmitted,
    TResult? Function(bool isLoading)? forceLogoutButtonPressed,
  }) {
    return exceptionEmitted?.call(appExceptionWrapper);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppExceptionWrapper appExceptionWrapper)? exceptionEmitted,
    TResult Function(bool isLoading)? loadingVisibilityEmitted,
    TResult Function(bool isLoading)? forceLogoutButtonPressed,
    required TResult orElse(),
  }) {
    if (exceptionEmitted != null) {
      return exceptionEmitted(appExceptionWrapper);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceptionEmitted value) exceptionEmitted,
    required TResult Function(LoadingVisibilityEmitted value)
        loadingVisibilityEmitted,
    required TResult Function(ForceLogoutButtonPressed value)
        forceLogoutButtonPressed,
  }) {
    return exceptionEmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceptionEmitted value)? exceptionEmitted,
    TResult? Function(LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult? Function(ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
  }) {
    return exceptionEmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceptionEmitted value)? exceptionEmitted,
    TResult Function(LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult Function(ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
    required TResult orElse(),
  }) {
    if (exceptionEmitted != null) {
      return exceptionEmitted(this);
    }
    return orElse();
  }
}

abstract class ExceptionEmitted implements CommonEvent {
  const factory ExceptionEmitted(
          {required final AppExceptionWrapper appExceptionWrapper}) =
      _$ExceptionEmitted;

  AppExceptionWrapper get appExceptionWrapper;
  @JsonKey(ignore: true)
  _$$ExceptionEmittedCopyWith<_$ExceptionEmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingVisibilityEmittedCopyWith<$Res> {
  factory _$$LoadingVisibilityEmittedCopyWith(_$LoadingVisibilityEmitted value,
          $Res Function(_$LoadingVisibilityEmitted) then) =
      __$$LoadingVisibilityEmittedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$LoadingVisibilityEmittedCopyWithImpl<$Res>
    extends _$CommonEventCopyWithImpl<$Res, _$LoadingVisibilityEmitted>
    implements _$$LoadingVisibilityEmittedCopyWith<$Res> {
  __$$LoadingVisibilityEmittedCopyWithImpl(_$LoadingVisibilityEmitted _value,
      $Res Function(_$LoadingVisibilityEmitted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$LoadingVisibilityEmitted(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingVisibilityEmitted implements LoadingVisibilityEmitted {
  const _$LoadingVisibilityEmitted({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CommonEvent.loadingVisibilityEmitted(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingVisibilityEmitted &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingVisibilityEmittedCopyWith<_$LoadingVisibilityEmitted>
      get copyWith =>
          __$$LoadingVisibilityEmittedCopyWithImpl<_$LoadingVisibilityEmitted>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppExceptionWrapper appExceptionWrapper)
        exceptionEmitted,
    required TResult Function(bool isLoading) loadingVisibilityEmitted,
    required TResult Function(bool isLoading) forceLogoutButtonPressed,
  }) {
    return loadingVisibilityEmitted(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppExceptionWrapper appExceptionWrapper)?
        exceptionEmitted,
    TResult? Function(bool isLoading)? loadingVisibilityEmitted,
    TResult? Function(bool isLoading)? forceLogoutButtonPressed,
  }) {
    return loadingVisibilityEmitted?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppExceptionWrapper appExceptionWrapper)? exceptionEmitted,
    TResult Function(bool isLoading)? loadingVisibilityEmitted,
    TResult Function(bool isLoading)? forceLogoutButtonPressed,
    required TResult orElse(),
  }) {
    if (loadingVisibilityEmitted != null) {
      return loadingVisibilityEmitted(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceptionEmitted value) exceptionEmitted,
    required TResult Function(LoadingVisibilityEmitted value)
        loadingVisibilityEmitted,
    required TResult Function(ForceLogoutButtonPressed value)
        forceLogoutButtonPressed,
  }) {
    return loadingVisibilityEmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceptionEmitted value)? exceptionEmitted,
    TResult? Function(LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult? Function(ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
  }) {
    return loadingVisibilityEmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceptionEmitted value)? exceptionEmitted,
    TResult Function(LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult Function(ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
    required TResult orElse(),
  }) {
    if (loadingVisibilityEmitted != null) {
      return loadingVisibilityEmitted(this);
    }
    return orElse();
  }
}

abstract class LoadingVisibilityEmitted implements CommonEvent {
  const factory LoadingVisibilityEmitted({required final bool isLoading}) =
      _$LoadingVisibilityEmitted;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$LoadingVisibilityEmittedCopyWith<_$LoadingVisibilityEmitted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForceLogoutButtonPressedCopyWith<$Res> {
  factory _$$ForceLogoutButtonPressedCopyWith(_$ForceLogoutButtonPressed value,
          $Res Function(_$ForceLogoutButtonPressed) then) =
      __$$ForceLogoutButtonPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$ForceLogoutButtonPressedCopyWithImpl<$Res>
    extends _$CommonEventCopyWithImpl<$Res, _$ForceLogoutButtonPressed>
    implements _$$ForceLogoutButtonPressedCopyWith<$Res> {
  __$$ForceLogoutButtonPressedCopyWithImpl(_$ForceLogoutButtonPressed _value,
      $Res Function(_$ForceLogoutButtonPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$ForceLogoutButtonPressed(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ForceLogoutButtonPressed implements ForceLogoutButtonPressed {
  const _$ForceLogoutButtonPressed({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'CommonEvent.forceLogoutButtonPressed(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForceLogoutButtonPressed &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForceLogoutButtonPressedCopyWith<_$ForceLogoutButtonPressed>
      get copyWith =>
          __$$ForceLogoutButtonPressedCopyWithImpl<_$ForceLogoutButtonPressed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppExceptionWrapper appExceptionWrapper)
        exceptionEmitted,
    required TResult Function(bool isLoading) loadingVisibilityEmitted,
    required TResult Function(bool isLoading) forceLogoutButtonPressed,
  }) {
    return forceLogoutButtonPressed(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppExceptionWrapper appExceptionWrapper)?
        exceptionEmitted,
    TResult? Function(bool isLoading)? loadingVisibilityEmitted,
    TResult? Function(bool isLoading)? forceLogoutButtonPressed,
  }) {
    return forceLogoutButtonPressed?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppExceptionWrapper appExceptionWrapper)? exceptionEmitted,
    TResult Function(bool isLoading)? loadingVisibilityEmitted,
    TResult Function(bool isLoading)? forceLogoutButtonPressed,
    required TResult orElse(),
  }) {
    if (forceLogoutButtonPressed != null) {
      return forceLogoutButtonPressed(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceptionEmitted value) exceptionEmitted,
    required TResult Function(LoadingVisibilityEmitted value)
        loadingVisibilityEmitted,
    required TResult Function(ForceLogoutButtonPressed value)
        forceLogoutButtonPressed,
  }) {
    return forceLogoutButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceptionEmitted value)? exceptionEmitted,
    TResult? Function(LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult? Function(ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
  }) {
    return forceLogoutButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceptionEmitted value)? exceptionEmitted,
    TResult Function(LoadingVisibilityEmitted value)? loadingVisibilityEmitted,
    TResult Function(ForceLogoutButtonPressed value)? forceLogoutButtonPressed,
    required TResult orElse(),
  }) {
    if (forceLogoutButtonPressed != null) {
      return forceLogoutButtonPressed(this);
    }
    return orElse();
  }
}

abstract class ForceLogoutButtonPressed implements CommonEvent {
  const factory ForceLogoutButtonPressed({final bool isLoading}) =
      _$ForceLogoutButtonPressed;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$ForceLogoutButtonPressedCopyWith<_$ForceLogoutButtonPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommonState {
  AppExceptionWrapper? get appExceptionWrapper =>
      throw _privateConstructorUsedError;
  int get loadingCount => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommonStateCopyWith<CommonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonStateCopyWith<$Res> {
  factory $CommonStateCopyWith(
          CommonState value, $Res Function(CommonState) then) =
      _$CommonStateCopyWithImpl<$Res, CommonState>;
  @useResult
  $Res call(
      {AppExceptionWrapper? appExceptionWrapper,
      int loadingCount,
      bool isLoading});
}

/// @nodoc
class _$CommonStateCopyWithImpl<$Res, $Val extends CommonState>
    implements $CommonStateCopyWith<$Res> {
  _$CommonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appExceptionWrapper = freezed,
    Object? loadingCount = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      appExceptionWrapper: freezed == appExceptionWrapper
          ? _value.appExceptionWrapper
          : appExceptionWrapper // ignore: cast_nullable_to_non_nullable
              as AppExceptionWrapper?,
      loadingCount: null == loadingCount
          ? _value.loadingCount
          : loadingCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommonStateCopyWith<$Res>
    implements $CommonStateCopyWith<$Res> {
  factory _$$_CommonStateCopyWith(
          _$_CommonState value, $Res Function(_$_CommonState) then) =
      __$$_CommonStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppExceptionWrapper? appExceptionWrapper,
      int loadingCount,
      bool isLoading});
}

/// @nodoc
class __$$_CommonStateCopyWithImpl<$Res>
    extends _$CommonStateCopyWithImpl<$Res, _$_CommonState>
    implements _$$_CommonStateCopyWith<$Res> {
  __$$_CommonStateCopyWithImpl(
      _$_CommonState _value, $Res Function(_$_CommonState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appExceptionWrapper = freezed,
    Object? loadingCount = null,
    Object? isLoading = null,
  }) {
    return _then(_$_CommonState(
      appExceptionWrapper: freezed == appExceptionWrapper
          ? _value.appExceptionWrapper
          : appExceptionWrapper // ignore: cast_nullable_to_non_nullable
              as AppExceptionWrapper?,
      loadingCount: null == loadingCount
          ? _value.loadingCount
          : loadingCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CommonState implements _CommonState {
  const _$_CommonState(
      {this.appExceptionWrapper,
      this.loadingCount = 0,
      this.isLoading = false});

  @override
  final AppExceptionWrapper? appExceptionWrapper;
  @override
  @JsonKey()
  final int loadingCount;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'CommonState(appExceptionWrapper: $appExceptionWrapper, loadingCount: $loadingCount, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommonState &&
            (identical(other.appExceptionWrapper, appExceptionWrapper) ||
                other.appExceptionWrapper == appExceptionWrapper) &&
            (identical(other.loadingCount, loadingCount) ||
                other.loadingCount == loadingCount) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, appExceptionWrapper, loadingCount, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommonStateCopyWith<_$_CommonState> get copyWith =>
      __$$_CommonStateCopyWithImpl<_$_CommonState>(this, _$identity);
}

abstract class _CommonState implements CommonState {
  const factory _CommonState(
      {final AppExceptionWrapper? appExceptionWrapper,
      final int loadingCount,
      final bool isLoading}) = _$_CommonState;

  @override
  AppExceptionWrapper? get appExceptionWrapper;
  @override
  int get loadingCount;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_CommonStateCopyWith<_$_CommonState> get copyWith =>
      throw _privateConstructorUsedError;
}
