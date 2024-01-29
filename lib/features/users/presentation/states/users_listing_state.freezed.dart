// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_listing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserListingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UsersResponse usersResponse) userListingSuccess,
    required TResult Function(String? error) userListingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UsersResponse usersResponse)? userListingSuccess,
    TResult? Function(String? error)? userListingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsersResponse usersResponse)? userListingSuccess,
    TResult Function(String? error)? userListingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(userListingSuccess value) userListingSuccess,
    required TResult Function(userListingError value) userListingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(userListingSuccess value)? userListingSuccess,
    TResult? Function(userListingError value)? userListingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(userListingSuccess value)? userListingSuccess,
    TResult Function(userListingError value)? userListingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListingStateCopyWith<$Res> {
  factory $UserListingStateCopyWith(
          UserListingState value, $Res Function(UserListingState) then) =
      _$UserListingStateCopyWithImpl<$Res, UserListingState>;
}

/// @nodoc
class _$UserListingStateCopyWithImpl<$Res, $Val extends UserListingState>
    implements $UserListingStateCopyWith<$Res> {
  _$UserListingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$initialImplCopyWith<$Res> {
  factory _$$initialImplCopyWith(
          _$initialImpl value, $Res Function(_$initialImpl) then) =
      __$$initialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$initialImplCopyWithImpl<$Res>
    extends _$UserListingStateCopyWithImpl<$Res, _$initialImpl>
    implements _$$initialImplCopyWith<$Res> {
  __$$initialImplCopyWithImpl(
      _$initialImpl _value, $Res Function(_$initialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$initialImpl implements initial {
  const _$initialImpl();

  @override
  String toString() {
    return 'UserListingState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UsersResponse usersResponse) userListingSuccess,
    required TResult Function(String? error) userListingError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UsersResponse usersResponse)? userListingSuccess,
    TResult? Function(String? error)? userListingError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsersResponse usersResponse)? userListingSuccess,
    TResult Function(String? error)? userListingError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(userListingSuccess value) userListingSuccess,
    required TResult Function(userListingError value) userListingError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(userListingSuccess value)? userListingSuccess,
    TResult? Function(userListingError value)? userListingError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(userListingSuccess value)? userListingSuccess,
    TResult Function(userListingError value)? userListingError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class initial implements UserListingState {
  const factory initial() = _$initialImpl;
}

/// @nodoc
abstract class _$$loadingImplCopyWith<$Res> {
  factory _$$loadingImplCopyWith(
          _$loadingImpl value, $Res Function(_$loadingImpl) then) =
      __$$loadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingImplCopyWithImpl<$Res>
    extends _$UserListingStateCopyWithImpl<$Res, _$loadingImpl>
    implements _$$loadingImplCopyWith<$Res> {
  __$$loadingImplCopyWithImpl(
      _$loadingImpl _value, $Res Function(_$loadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadingImpl implements loading {
  const _$loadingImpl();

  @override
  String toString() {
    return 'UserListingState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UsersResponse usersResponse) userListingSuccess,
    required TResult Function(String? error) userListingError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UsersResponse usersResponse)? userListingSuccess,
    TResult? Function(String? error)? userListingError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsersResponse usersResponse)? userListingSuccess,
    TResult Function(String? error)? userListingError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(userListingSuccess value) userListingSuccess,
    required TResult Function(userListingError value) userListingError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(userListingSuccess value)? userListingSuccess,
    TResult? Function(userListingError value)? userListingError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(userListingSuccess value)? userListingSuccess,
    TResult Function(userListingError value)? userListingError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class loading implements UserListingState {
  const factory loading() = _$loadingImpl;
}

/// @nodoc
abstract class _$$userListingSuccessImplCopyWith<$Res> {
  factory _$$userListingSuccessImplCopyWith(_$userListingSuccessImpl value,
          $Res Function(_$userListingSuccessImpl) then) =
      __$$userListingSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UsersResponse usersResponse});
}

/// @nodoc
class __$$userListingSuccessImplCopyWithImpl<$Res>
    extends _$UserListingStateCopyWithImpl<$Res, _$userListingSuccessImpl>
    implements _$$userListingSuccessImplCopyWith<$Res> {
  __$$userListingSuccessImplCopyWithImpl(_$userListingSuccessImpl _value,
      $Res Function(_$userListingSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usersResponse = null,
  }) {
    return _then(_$userListingSuccessImpl(
      null == usersResponse
          ? _value.usersResponse
          : usersResponse // ignore: cast_nullable_to_non_nullable
              as UsersResponse,
    ));
  }
}

/// @nodoc

class _$userListingSuccessImpl implements userListingSuccess {
  const _$userListingSuccessImpl(this.usersResponse);

  @override
  final UsersResponse usersResponse;

  @override
  String toString() {
    return 'UserListingState.userListingSuccess(usersResponse: $usersResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userListingSuccessImpl &&
            (identical(other.usersResponse, usersResponse) ||
                other.usersResponse == usersResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usersResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userListingSuccessImplCopyWith<_$userListingSuccessImpl> get copyWith =>
      __$$userListingSuccessImplCopyWithImpl<_$userListingSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UsersResponse usersResponse) userListingSuccess,
    required TResult Function(String? error) userListingError,
  }) {
    return userListingSuccess(usersResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UsersResponse usersResponse)? userListingSuccess,
    TResult? Function(String? error)? userListingError,
  }) {
    return userListingSuccess?.call(usersResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsersResponse usersResponse)? userListingSuccess,
    TResult Function(String? error)? userListingError,
    required TResult orElse(),
  }) {
    if (userListingSuccess != null) {
      return userListingSuccess(usersResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(userListingSuccess value) userListingSuccess,
    required TResult Function(userListingError value) userListingError,
  }) {
    return userListingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(userListingSuccess value)? userListingSuccess,
    TResult? Function(userListingError value)? userListingError,
  }) {
    return userListingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(userListingSuccess value)? userListingSuccess,
    TResult Function(userListingError value)? userListingError,
    required TResult orElse(),
  }) {
    if (userListingSuccess != null) {
      return userListingSuccess(this);
    }
    return orElse();
  }
}

abstract class userListingSuccess implements UserListingState {
  const factory userListingSuccess(final UsersResponse usersResponse) =
      _$userListingSuccessImpl;

  UsersResponse get usersResponse;
  @JsonKey(ignore: true)
  _$$userListingSuccessImplCopyWith<_$userListingSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$userListingErrorImplCopyWith<$Res> {
  factory _$$userListingErrorImplCopyWith(_$userListingErrorImpl value,
          $Res Function(_$userListingErrorImpl) then) =
      __$$userListingErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$userListingErrorImplCopyWithImpl<$Res>
    extends _$UserListingStateCopyWithImpl<$Res, _$userListingErrorImpl>
    implements _$$userListingErrorImplCopyWith<$Res> {
  __$$userListingErrorImplCopyWithImpl(_$userListingErrorImpl _value,
      $Res Function(_$userListingErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$userListingErrorImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$userListingErrorImpl implements userListingError {
  const _$userListingErrorImpl(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'UserListingState.userListingError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userListingErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userListingErrorImplCopyWith<_$userListingErrorImpl> get copyWith =>
      __$$userListingErrorImplCopyWithImpl<_$userListingErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UsersResponse usersResponse) userListingSuccess,
    required TResult Function(String? error) userListingError,
  }) {
    return userListingError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UsersResponse usersResponse)? userListingSuccess,
    TResult? Function(String? error)? userListingError,
  }) {
    return userListingError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsersResponse usersResponse)? userListingSuccess,
    TResult Function(String? error)? userListingError,
    required TResult orElse(),
  }) {
    if (userListingError != null) {
      return userListingError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initial value) initial,
    required TResult Function(loading value) loading,
    required TResult Function(userListingSuccess value) userListingSuccess,
    required TResult Function(userListingError value) userListingError,
  }) {
    return userListingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initial value)? initial,
    TResult? Function(loading value)? loading,
    TResult? Function(userListingSuccess value)? userListingSuccess,
    TResult? Function(userListingError value)? userListingError,
  }) {
    return userListingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initial value)? initial,
    TResult Function(loading value)? loading,
    TResult Function(userListingSuccess value)? userListingSuccess,
    TResult Function(userListingError value)? userListingError,
    required TResult orElse(),
  }) {
    if (userListingError != null) {
      return userListingError(this);
    }
    return orElse();
  }
}

abstract class userListingError implements UserListingState {
  const factory userListingError(final String? error) = _$userListingErrorImpl;

  String? get error;
  @JsonKey(ignore: true)
  _$$userListingErrorImplCopyWith<_$userListingErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
