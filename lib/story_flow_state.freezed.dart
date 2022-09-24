// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'story_flow_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StoryFlowState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoading,
    required TResult Function(List<User> users) showView,
    required TResult Function(User? previousUser, User? currentUser)
        onPressedNext,
    required TResult Function(User? previousUser, User? currentUser)
        onPressedPrevious,
    required TResult Function() onQuit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showLoading,
    TResult Function(List<User> users)? showView,
    TResult Function(User? previousUser, User? currentUser)? onPressedNext,
    TResult Function(User? previousUser, User? currentUser)? onPressedPrevious,
    TResult Function()? onQuit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoading,
    TResult Function(List<User> users)? showView,
    TResult Function(User? previousUser, User? currentUser)? onPressedNext,
    TResult Function(User? previousUser, User? currentUser)? onPressedPrevious,
    TResult Function()? onQuit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLoading value) showLoading,
    required TResult Function(ShowView value) showView,
    required TResult Function(OnNext value) onPressedNext,
    required TResult Function(OnPrevious value) onPressedPrevious,
    required TResult Function(OnQuit value) onQuit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowLoading value)? showLoading,
    TResult Function(ShowView value)? showView,
    TResult Function(OnNext value)? onPressedNext,
    TResult Function(OnPrevious value)? onPressedPrevious,
    TResult Function(OnQuit value)? onQuit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLoading value)? showLoading,
    TResult Function(ShowView value)? showView,
    TResult Function(OnNext value)? onPressedNext,
    TResult Function(OnPrevious value)? onPressedPrevious,
    TResult Function(OnQuit value)? onQuit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryFlowStateCopyWith<$Res> {
  factory $StoryFlowStateCopyWith(
          StoryFlowState value, $Res Function(StoryFlowState) then) =
      _$StoryFlowStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoryFlowStateCopyWithImpl<$Res>
    implements $StoryFlowStateCopyWith<$Res> {
  _$StoryFlowStateCopyWithImpl(this._value, this._then);

  final StoryFlowState _value;
  // ignore: unused_field
  final $Res Function(StoryFlowState) _then;
}

/// @nodoc
abstract class _$$ShowLoadingCopyWith<$Res> {
  factory _$$ShowLoadingCopyWith(
          _$ShowLoading value, $Res Function(_$ShowLoading) then) =
      __$$ShowLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowLoadingCopyWithImpl<$Res>
    extends _$StoryFlowStateCopyWithImpl<$Res>
    implements _$$ShowLoadingCopyWith<$Res> {
  __$$ShowLoadingCopyWithImpl(
      _$ShowLoading _value, $Res Function(_$ShowLoading) _then)
      : super(_value, (v) => _then(v as _$ShowLoading));

  @override
  _$ShowLoading get _value => super._value as _$ShowLoading;
}

/// @nodoc

class _$ShowLoading implements ShowLoading {
  const _$ShowLoading();

  @override
  String toString() {
    return 'StoryFlowState.showLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoading,
    required TResult Function(List<User> users) showView,
    required TResult Function(User? previousUser, User? currentUser)
        onPressedNext,
    required TResult Function(User? previousUser, User? currentUser)
        onPressedPrevious,
    required TResult Function() onQuit,
  }) {
    return showLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showLoading,
    TResult Function(List<User> users)? showView,
    TResult Function(User? previousUser, User? currentUser)? onPressedNext,
    TResult Function(User? previousUser, User? currentUser)? onPressedPrevious,
    TResult Function()? onQuit,
  }) {
    return showLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoading,
    TResult Function(List<User> users)? showView,
    TResult Function(User? previousUser, User? currentUser)? onPressedNext,
    TResult Function(User? previousUser, User? currentUser)? onPressedPrevious,
    TResult Function()? onQuit,
    required TResult orElse(),
  }) {
    if (showLoading != null) {
      return showLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLoading value) showLoading,
    required TResult Function(ShowView value) showView,
    required TResult Function(OnNext value) onPressedNext,
    required TResult Function(OnPrevious value) onPressedPrevious,
    required TResult Function(OnQuit value) onQuit,
  }) {
    return showLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowLoading value)? showLoading,
    TResult Function(ShowView value)? showView,
    TResult Function(OnNext value)? onPressedNext,
    TResult Function(OnPrevious value)? onPressedPrevious,
    TResult Function(OnQuit value)? onQuit,
  }) {
    return showLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLoading value)? showLoading,
    TResult Function(ShowView value)? showView,
    TResult Function(OnNext value)? onPressedNext,
    TResult Function(OnPrevious value)? onPressedPrevious,
    TResult Function(OnQuit value)? onQuit,
    required TResult orElse(),
  }) {
    if (showLoading != null) {
      return showLoading(this);
    }
    return orElse();
  }
}

abstract class ShowLoading implements StoryFlowState {
  const factory ShowLoading() = _$ShowLoading;
}

/// @nodoc
abstract class _$$ShowViewCopyWith<$Res> {
  factory _$$ShowViewCopyWith(
          _$ShowView value, $Res Function(_$ShowView) then) =
      __$$ShowViewCopyWithImpl<$Res>;
  $Res call({List<User> users});
}

/// @nodoc
class __$$ShowViewCopyWithImpl<$Res> extends _$StoryFlowStateCopyWithImpl<$Res>
    implements _$$ShowViewCopyWith<$Res> {
  __$$ShowViewCopyWithImpl(_$ShowView _value, $Res Function(_$ShowView) _then)
      : super(_value, (v) => _then(v as _$ShowView));

  @override
  _$ShowView get _value => super._value as _$ShowView;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_$ShowView(
      users: users == freezed
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$ShowView implements ShowView {
  const _$ShowView({final List<User> users = const <User>[]}) : _users = users;

  final List<User> _users;
  @override
  @JsonKey()
  List<User> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'StoryFlowState.showView(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowView &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  _$$ShowViewCopyWith<_$ShowView> get copyWith =>
      __$$ShowViewCopyWithImpl<_$ShowView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoading,
    required TResult Function(List<User> users) showView,
    required TResult Function(User? previousUser, User? currentUser)
        onPressedNext,
    required TResult Function(User? previousUser, User? currentUser)
        onPressedPrevious,
    required TResult Function() onQuit,
  }) {
    return showView(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showLoading,
    TResult Function(List<User> users)? showView,
    TResult Function(User? previousUser, User? currentUser)? onPressedNext,
    TResult Function(User? previousUser, User? currentUser)? onPressedPrevious,
    TResult Function()? onQuit,
  }) {
    return showView?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoading,
    TResult Function(List<User> users)? showView,
    TResult Function(User? previousUser, User? currentUser)? onPressedNext,
    TResult Function(User? previousUser, User? currentUser)? onPressedPrevious,
    TResult Function()? onQuit,
    required TResult orElse(),
  }) {
    if (showView != null) {
      return showView(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLoading value) showLoading,
    required TResult Function(ShowView value) showView,
    required TResult Function(OnNext value) onPressedNext,
    required TResult Function(OnPrevious value) onPressedPrevious,
    required TResult Function(OnQuit value) onQuit,
  }) {
    return showView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowLoading value)? showLoading,
    TResult Function(ShowView value)? showView,
    TResult Function(OnNext value)? onPressedNext,
    TResult Function(OnPrevious value)? onPressedPrevious,
    TResult Function(OnQuit value)? onQuit,
  }) {
    return showView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLoading value)? showLoading,
    TResult Function(ShowView value)? showView,
    TResult Function(OnNext value)? onPressedNext,
    TResult Function(OnPrevious value)? onPressedPrevious,
    TResult Function(OnQuit value)? onQuit,
    required TResult orElse(),
  }) {
    if (showView != null) {
      return showView(this);
    }
    return orElse();
  }
}

abstract class ShowView implements StoryFlowState {
  const factory ShowView({final List<User> users}) = _$ShowView;

  List<User> get users;
  @JsonKey(ignore: true)
  _$$ShowViewCopyWith<_$ShowView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnNextCopyWith<$Res> {
  factory _$$OnNextCopyWith(_$OnNext value, $Res Function(_$OnNext) then) =
      __$$OnNextCopyWithImpl<$Res>;
  $Res call({User? previousUser, User? currentUser});
}

/// @nodoc
class __$$OnNextCopyWithImpl<$Res> extends _$StoryFlowStateCopyWithImpl<$Res>
    implements _$$OnNextCopyWith<$Res> {
  __$$OnNextCopyWithImpl(_$OnNext _value, $Res Function(_$OnNext) _then)
      : super(_value, (v) => _then(v as _$OnNext));

  @override
  _$OnNext get _value => super._value as _$OnNext;

  @override
  $Res call({
    Object? previousUser = freezed,
    Object? currentUser = freezed,
  }) {
    return _then(_$OnNext(
      previousUser: previousUser == freezed
          ? _value.previousUser
          : previousUser // ignore: cast_nullable_to_non_nullable
              as User?,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$OnNext implements OnNext {
  const _$OnNext({this.previousUser, this.currentUser});

  @override
  final User? previousUser;
  @override
  final User? currentUser;

  @override
  String toString() {
    return 'StoryFlowState.onPressedNext(previousUser: $previousUser, currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnNext &&
            const DeepCollectionEquality()
                .equals(other.previousUser, previousUser) &&
            const DeepCollectionEquality()
                .equals(other.currentUser, currentUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(previousUser),
      const DeepCollectionEquality().hash(currentUser));

  @JsonKey(ignore: true)
  @override
  _$$OnNextCopyWith<_$OnNext> get copyWith =>
      __$$OnNextCopyWithImpl<_$OnNext>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoading,
    required TResult Function(List<User> users) showView,
    required TResult Function(User? previousUser, User? currentUser)
        onPressedNext,
    required TResult Function(User? previousUser, User? currentUser)
        onPressedPrevious,
    required TResult Function() onQuit,
  }) {
    return onPressedNext(previousUser, currentUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showLoading,
    TResult Function(List<User> users)? showView,
    TResult Function(User? previousUser, User? currentUser)? onPressedNext,
    TResult Function(User? previousUser, User? currentUser)? onPressedPrevious,
    TResult Function()? onQuit,
  }) {
    return onPressedNext?.call(previousUser, currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoading,
    TResult Function(List<User> users)? showView,
    TResult Function(User? previousUser, User? currentUser)? onPressedNext,
    TResult Function(User? previousUser, User? currentUser)? onPressedPrevious,
    TResult Function()? onQuit,
    required TResult orElse(),
  }) {
    if (onPressedNext != null) {
      return onPressedNext(previousUser, currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLoading value) showLoading,
    required TResult Function(ShowView value) showView,
    required TResult Function(OnNext value) onPressedNext,
    required TResult Function(OnPrevious value) onPressedPrevious,
    required TResult Function(OnQuit value) onQuit,
  }) {
    return onPressedNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowLoading value)? showLoading,
    TResult Function(ShowView value)? showView,
    TResult Function(OnNext value)? onPressedNext,
    TResult Function(OnPrevious value)? onPressedPrevious,
    TResult Function(OnQuit value)? onQuit,
  }) {
    return onPressedNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLoading value)? showLoading,
    TResult Function(ShowView value)? showView,
    TResult Function(OnNext value)? onPressedNext,
    TResult Function(OnPrevious value)? onPressedPrevious,
    TResult Function(OnQuit value)? onQuit,
    required TResult orElse(),
  }) {
    if (onPressedNext != null) {
      return onPressedNext(this);
    }
    return orElse();
  }
}

abstract class OnNext implements StoryFlowState {
  const factory OnNext({final User? previousUser, final User? currentUser}) =
      _$OnNext;

  User? get previousUser;
  User? get currentUser;
  @JsonKey(ignore: true)
  _$$OnNextCopyWith<_$OnNext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnPreviousCopyWith<$Res> {
  factory _$$OnPreviousCopyWith(
          _$OnPrevious value, $Res Function(_$OnPrevious) then) =
      __$$OnPreviousCopyWithImpl<$Res>;
  $Res call({User? previousUser, User? currentUser});
}

/// @nodoc
class __$$OnPreviousCopyWithImpl<$Res>
    extends _$StoryFlowStateCopyWithImpl<$Res>
    implements _$$OnPreviousCopyWith<$Res> {
  __$$OnPreviousCopyWithImpl(
      _$OnPrevious _value, $Res Function(_$OnPrevious) _then)
      : super(_value, (v) => _then(v as _$OnPrevious));

  @override
  _$OnPrevious get _value => super._value as _$OnPrevious;

  @override
  $Res call({
    Object? previousUser = freezed,
    Object? currentUser = freezed,
  }) {
    return _then(_$OnPrevious(
      previousUser: previousUser == freezed
          ? _value.previousUser
          : previousUser // ignore: cast_nullable_to_non_nullable
              as User?,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$OnPrevious implements OnPrevious {
  const _$OnPrevious({this.previousUser, this.currentUser});

  @override
  final User? previousUser;
  @override
  final User? currentUser;

  @override
  String toString() {
    return 'StoryFlowState.onPressedPrevious(previousUser: $previousUser, currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPrevious &&
            const DeepCollectionEquality()
                .equals(other.previousUser, previousUser) &&
            const DeepCollectionEquality()
                .equals(other.currentUser, currentUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(previousUser),
      const DeepCollectionEquality().hash(currentUser));

  @JsonKey(ignore: true)
  @override
  _$$OnPreviousCopyWith<_$OnPrevious> get copyWith =>
      __$$OnPreviousCopyWithImpl<_$OnPrevious>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoading,
    required TResult Function(List<User> users) showView,
    required TResult Function(User? previousUser, User? currentUser)
        onPressedNext,
    required TResult Function(User? previousUser, User? currentUser)
        onPressedPrevious,
    required TResult Function() onQuit,
  }) {
    return onPressedPrevious(previousUser, currentUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showLoading,
    TResult Function(List<User> users)? showView,
    TResult Function(User? previousUser, User? currentUser)? onPressedNext,
    TResult Function(User? previousUser, User? currentUser)? onPressedPrevious,
    TResult Function()? onQuit,
  }) {
    return onPressedPrevious?.call(previousUser, currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoading,
    TResult Function(List<User> users)? showView,
    TResult Function(User? previousUser, User? currentUser)? onPressedNext,
    TResult Function(User? previousUser, User? currentUser)? onPressedPrevious,
    TResult Function()? onQuit,
    required TResult orElse(),
  }) {
    if (onPressedPrevious != null) {
      return onPressedPrevious(previousUser, currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLoading value) showLoading,
    required TResult Function(ShowView value) showView,
    required TResult Function(OnNext value) onPressedNext,
    required TResult Function(OnPrevious value) onPressedPrevious,
    required TResult Function(OnQuit value) onQuit,
  }) {
    return onPressedPrevious(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowLoading value)? showLoading,
    TResult Function(ShowView value)? showView,
    TResult Function(OnNext value)? onPressedNext,
    TResult Function(OnPrevious value)? onPressedPrevious,
    TResult Function(OnQuit value)? onQuit,
  }) {
    return onPressedPrevious?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLoading value)? showLoading,
    TResult Function(ShowView value)? showView,
    TResult Function(OnNext value)? onPressedNext,
    TResult Function(OnPrevious value)? onPressedPrevious,
    TResult Function(OnQuit value)? onQuit,
    required TResult orElse(),
  }) {
    if (onPressedPrevious != null) {
      return onPressedPrevious(this);
    }
    return orElse();
  }
}

abstract class OnPrevious implements StoryFlowState {
  const factory OnPrevious(
      {final User? previousUser, final User? currentUser}) = _$OnPrevious;

  User? get previousUser;
  User? get currentUser;
  @JsonKey(ignore: true)
  _$$OnPreviousCopyWith<_$OnPrevious> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnQuitCopyWith<$Res> {
  factory _$$OnQuitCopyWith(_$OnQuit value, $Res Function(_$OnQuit) then) =
      __$$OnQuitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnQuitCopyWithImpl<$Res> extends _$StoryFlowStateCopyWithImpl<$Res>
    implements _$$OnQuitCopyWith<$Res> {
  __$$OnQuitCopyWithImpl(_$OnQuit _value, $Res Function(_$OnQuit) _then)
      : super(_value, (v) => _then(v as _$OnQuit));

  @override
  _$OnQuit get _value => super._value as _$OnQuit;
}

/// @nodoc

class _$OnQuit implements OnQuit {
  const _$OnQuit();

  @override
  String toString() {
    return 'StoryFlowState.onQuit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnQuit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoading,
    required TResult Function(List<User> users) showView,
    required TResult Function(User? previousUser, User? currentUser)
        onPressedNext,
    required TResult Function(User? previousUser, User? currentUser)
        onPressedPrevious,
    required TResult Function() onQuit,
  }) {
    return onQuit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showLoading,
    TResult Function(List<User> users)? showView,
    TResult Function(User? previousUser, User? currentUser)? onPressedNext,
    TResult Function(User? previousUser, User? currentUser)? onPressedPrevious,
    TResult Function()? onQuit,
  }) {
    return onQuit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoading,
    TResult Function(List<User> users)? showView,
    TResult Function(User? previousUser, User? currentUser)? onPressedNext,
    TResult Function(User? previousUser, User? currentUser)? onPressedPrevious,
    TResult Function()? onQuit,
    required TResult orElse(),
  }) {
    if (onQuit != null) {
      return onQuit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLoading value) showLoading,
    required TResult Function(ShowView value) showView,
    required TResult Function(OnNext value) onPressedNext,
    required TResult Function(OnPrevious value) onPressedPrevious,
    required TResult Function(OnQuit value) onQuit,
  }) {
    return onQuit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowLoading value)? showLoading,
    TResult Function(ShowView value)? showView,
    TResult Function(OnNext value)? onPressedNext,
    TResult Function(OnPrevious value)? onPressedPrevious,
    TResult Function(OnQuit value)? onQuit,
  }) {
    return onQuit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLoading value)? showLoading,
    TResult Function(ShowView value)? showView,
    TResult Function(OnNext value)? onPressedNext,
    TResult Function(OnPrevious value)? onPressedPrevious,
    TResult Function(OnQuit value)? onQuit,
    required TResult orElse(),
  }) {
    if (onQuit != null) {
      return onQuit(this);
    }
    return orElse();
  }
}

abstract class OnQuit implements StoryFlowState {
  const factory OnQuit() = _$OnQuit;
}
