// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initiated,
    required TResult Function() languageChanged,
    required TResult Function() themeChanged,
    required TResult Function() loggedInStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initiated,
    TResult? Function()? languageChanged,
    TResult? Function()? themeChanged,
    TResult? Function()? loggedInStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initiated,
    TResult Function()? languageChanged,
    TResult Function()? themeChanged,
    TResult Function()? loggedInStatusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitiated value) initiated,
    required TResult Function(AppLanguageChanged value) languageChanged,
    required TResult Function(AppThemeChanged value) themeChanged,
    required TResult Function(AppLoggedInStatusChanged value)
        loggedInStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitiated value)? initiated,
    TResult? Function(AppLanguageChanged value)? languageChanged,
    TResult? Function(AppThemeChanged value)? themeChanged,
    TResult? Function(AppLoggedInStatusChanged value)? loggedInStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitiated value)? initiated,
    TResult Function(AppLanguageChanged value)? languageChanged,
    TResult Function(AppThemeChanged value)? themeChanged,
    TResult Function(AppLoggedInStatusChanged value)? loggedInStatusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppInitiatedCopyWith<$Res> {
  factory _$$AppInitiatedCopyWith(
          _$AppInitiated value, $Res Function(_$AppInitiated) then) =
      __$$AppInitiatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppInitiatedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppInitiated>
    implements _$$AppInitiatedCopyWith<$Res> {
  __$$AppInitiatedCopyWithImpl(
      _$AppInitiated _value, $Res Function(_$AppInitiated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppInitiated implements AppInitiated {
  const _$AppInitiated();

  @override
  String toString() {
    return 'AppEvent.initiated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppInitiated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initiated,
    required TResult Function() languageChanged,
    required TResult Function() themeChanged,
    required TResult Function() loggedInStatusChanged,
  }) {
    return initiated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initiated,
    TResult? Function()? languageChanged,
    TResult? Function()? themeChanged,
    TResult? Function()? loggedInStatusChanged,
  }) {
    return initiated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initiated,
    TResult Function()? languageChanged,
    TResult Function()? themeChanged,
    TResult Function()? loggedInStatusChanged,
    required TResult orElse(),
  }) {
    if (initiated != null) {
      return initiated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitiated value) initiated,
    required TResult Function(AppLanguageChanged value) languageChanged,
    required TResult Function(AppThemeChanged value) themeChanged,
    required TResult Function(AppLoggedInStatusChanged value)
        loggedInStatusChanged,
  }) {
    return initiated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitiated value)? initiated,
    TResult? Function(AppLanguageChanged value)? languageChanged,
    TResult? Function(AppThemeChanged value)? themeChanged,
    TResult? Function(AppLoggedInStatusChanged value)? loggedInStatusChanged,
  }) {
    return initiated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitiated value)? initiated,
    TResult Function(AppLanguageChanged value)? languageChanged,
    TResult Function(AppThemeChanged value)? themeChanged,
    TResult Function(AppLoggedInStatusChanged value)? loggedInStatusChanged,
    required TResult orElse(),
  }) {
    if (initiated != null) {
      return initiated(this);
    }
    return orElse();
  }
}

abstract class AppInitiated implements AppEvent {
  const factory AppInitiated() = _$AppInitiated;
}

/// @nodoc
abstract class _$$AppLanguageChangedCopyWith<$Res> {
  factory _$$AppLanguageChangedCopyWith(_$AppLanguageChanged value,
          $Res Function(_$AppLanguageChanged) then) =
      __$$AppLanguageChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppLanguageChangedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppLanguageChanged>
    implements _$$AppLanguageChangedCopyWith<$Res> {
  __$$AppLanguageChangedCopyWithImpl(
      _$AppLanguageChanged _value, $Res Function(_$AppLanguageChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppLanguageChanged implements AppLanguageChanged {
  const _$AppLanguageChanged();

  @override
  String toString() {
    return 'AppEvent.languageChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppLanguageChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initiated,
    required TResult Function() languageChanged,
    required TResult Function() themeChanged,
    required TResult Function() loggedInStatusChanged,
  }) {
    return languageChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initiated,
    TResult? Function()? languageChanged,
    TResult? Function()? themeChanged,
    TResult? Function()? loggedInStatusChanged,
  }) {
    return languageChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initiated,
    TResult Function()? languageChanged,
    TResult Function()? themeChanged,
    TResult Function()? loggedInStatusChanged,
    required TResult orElse(),
  }) {
    if (languageChanged != null) {
      return languageChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitiated value) initiated,
    required TResult Function(AppLanguageChanged value) languageChanged,
    required TResult Function(AppThemeChanged value) themeChanged,
    required TResult Function(AppLoggedInStatusChanged value)
        loggedInStatusChanged,
  }) {
    return languageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitiated value)? initiated,
    TResult? Function(AppLanguageChanged value)? languageChanged,
    TResult? Function(AppThemeChanged value)? themeChanged,
    TResult? Function(AppLoggedInStatusChanged value)? loggedInStatusChanged,
  }) {
    return languageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitiated value)? initiated,
    TResult Function(AppLanguageChanged value)? languageChanged,
    TResult Function(AppThemeChanged value)? themeChanged,
    TResult Function(AppLoggedInStatusChanged value)? loggedInStatusChanged,
    required TResult orElse(),
  }) {
    if (languageChanged != null) {
      return languageChanged(this);
    }
    return orElse();
  }
}

abstract class AppLanguageChanged implements AppEvent {
  const factory AppLanguageChanged() = _$AppLanguageChanged;
}

/// @nodoc
abstract class _$$AppThemeChangedCopyWith<$Res> {
  factory _$$AppThemeChangedCopyWith(
          _$AppThemeChanged value, $Res Function(_$AppThemeChanged) then) =
      __$$AppThemeChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppThemeChangedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppThemeChanged>
    implements _$$AppThemeChangedCopyWith<$Res> {
  __$$AppThemeChangedCopyWithImpl(
      _$AppThemeChanged _value, $Res Function(_$AppThemeChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppThemeChanged implements AppThemeChanged {
  const _$AppThemeChanged();

  @override
  String toString() {
    return 'AppEvent.themeChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppThemeChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initiated,
    required TResult Function() languageChanged,
    required TResult Function() themeChanged,
    required TResult Function() loggedInStatusChanged,
  }) {
    return themeChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initiated,
    TResult? Function()? languageChanged,
    TResult? Function()? themeChanged,
    TResult? Function()? loggedInStatusChanged,
  }) {
    return themeChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initiated,
    TResult Function()? languageChanged,
    TResult Function()? themeChanged,
    TResult Function()? loggedInStatusChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitiated value) initiated,
    required TResult Function(AppLanguageChanged value) languageChanged,
    required TResult Function(AppThemeChanged value) themeChanged,
    required TResult Function(AppLoggedInStatusChanged value)
        loggedInStatusChanged,
  }) {
    return themeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitiated value)? initiated,
    TResult? Function(AppLanguageChanged value)? languageChanged,
    TResult? Function(AppThemeChanged value)? themeChanged,
    TResult? Function(AppLoggedInStatusChanged value)? loggedInStatusChanged,
  }) {
    return themeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitiated value)? initiated,
    TResult Function(AppLanguageChanged value)? languageChanged,
    TResult Function(AppThemeChanged value)? themeChanged,
    TResult Function(AppLoggedInStatusChanged value)? loggedInStatusChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(this);
    }
    return orElse();
  }
}

abstract class AppThemeChanged implements AppEvent {
  const factory AppThemeChanged() = _$AppThemeChanged;
}

/// @nodoc
abstract class _$$AppLoggedInStatusChangedCopyWith<$Res> {
  factory _$$AppLoggedInStatusChangedCopyWith(_$AppLoggedInStatusChanged value,
          $Res Function(_$AppLoggedInStatusChanged) then) =
      __$$AppLoggedInStatusChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppLoggedInStatusChangedCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppLoggedInStatusChanged>
    implements _$$AppLoggedInStatusChangedCopyWith<$Res> {
  __$$AppLoggedInStatusChangedCopyWithImpl(_$AppLoggedInStatusChanged _value,
      $Res Function(_$AppLoggedInStatusChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppLoggedInStatusChanged implements AppLoggedInStatusChanged {
  const _$AppLoggedInStatusChanged();

  @override
  String toString() {
    return 'AppEvent.loggedInStatusChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLoggedInStatusChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initiated,
    required TResult Function() languageChanged,
    required TResult Function() themeChanged,
    required TResult Function() loggedInStatusChanged,
  }) {
    return loggedInStatusChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initiated,
    TResult? Function()? languageChanged,
    TResult? Function()? themeChanged,
    TResult? Function()? loggedInStatusChanged,
  }) {
    return loggedInStatusChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initiated,
    TResult Function()? languageChanged,
    TResult Function()? themeChanged,
    TResult Function()? loggedInStatusChanged,
    required TResult orElse(),
  }) {
    if (loggedInStatusChanged != null) {
      return loggedInStatusChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppInitiated value) initiated,
    required TResult Function(AppLanguageChanged value) languageChanged,
    required TResult Function(AppThemeChanged value) themeChanged,
    required TResult Function(AppLoggedInStatusChanged value)
        loggedInStatusChanged,
  }) {
    return loggedInStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppInitiated value)? initiated,
    TResult? Function(AppLanguageChanged value)? languageChanged,
    TResult? Function(AppThemeChanged value)? themeChanged,
    TResult? Function(AppLoggedInStatusChanged value)? loggedInStatusChanged,
  }) {
    return loggedInStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppInitiated value)? initiated,
    TResult Function(AppLanguageChanged value)? languageChanged,
    TResult Function(AppThemeChanged value)? themeChanged,
    TResult Function(AppLoggedInStatusChanged value)? loggedInStatusChanged,
    required TResult orElse(),
  }) {
    if (loggedInStatusChanged != null) {
      return loggedInStatusChanged(this);
    }
    return orElse();
  }
}

abstract class AppLoggedInStatusChanged implements AppEvent {
  const factory AppLoggedInStatusChanged() = _$AppLoggedInStatusChanged;
}

/// @nodoc
mixin _$AppState {
  AppTheme get appTheme => throw _privateConstructorUsedError;
  String get languageCode => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;
  ThemeMode get themeMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {AppTheme appTheme,
      String languageCode,
      bool isLoggedIn,
      ThemeMode themeMode});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appTheme = null,
    Object? languageCode = null,
    Object? isLoggedIn = null,
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      appTheme: null == appTheme
          ? _value.appTheme
          : appTheme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppTheme appTheme,
      String languageCode,
      bool isLoggedIn,
      ThemeMode themeMode});
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_AppState>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appTheme = null,
    Object? languageCode = null,
    Object? isLoggedIn = null,
    Object? themeMode = null,
  }) {
    return _then(_$_AppState(
      appTheme: null == appTheme
          ? _value.appTheme
          : appTheme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  const _$_AppState(
      {required this.appTheme,
      this.languageCode = 'vi',
      this.isLoggedIn = false,
      this.themeMode = ThemeMode.system});

  @override
  final AppTheme appTheme;
  @override
  @JsonKey()
  final String languageCode;
  @override
  @JsonKey()
  final bool isLoggedIn;
  @override
  @JsonKey()
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'AppState(appTheme: $appTheme, languageCode: $languageCode, isLoggedIn: $isLoggedIn, themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            (identical(other.appTheme, appTheme) ||
                other.appTheme == appTheme) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, appTheme, languageCode, isLoggedIn, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {required final AppTheme appTheme,
      final String languageCode,
      final bool isLoggedIn,
      final ThemeMode themeMode}) = _$_AppState;

  @override
  AppTheme get appTheme;
  @override
  String get languageCode;
  @override
  bool get isLoggedIn;
  @override
  ThemeMode get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
