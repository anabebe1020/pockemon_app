// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pockemon_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PockemonStateTearOff {
  const _$PockemonStateTearOff();

  _PockemonState call(
      {String? id, String? name, String? image, List<String?>? types}) {
    return _PockemonState(
      id: id,
      name: name,
      image: image,
      types: types,
    );
  }
}

/// @nodoc
const $PockemonState = _$PockemonStateTearOff();

/// @nodoc
mixin _$PockemonState {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<String?>? get types => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PockemonStateCopyWith<PockemonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PockemonStateCopyWith<$Res> {
  factory $PockemonStateCopyWith(
          PockemonState value, $Res Function(PockemonState) then) =
      _$PockemonStateCopyWithImpl<$Res>;
  $Res call({String? id, String? name, String? image, List<String?>? types});
}

/// @nodoc
class _$PockemonStateCopyWithImpl<$Res>
    implements $PockemonStateCopyWith<$Res> {
  _$PockemonStateCopyWithImpl(this._value, this._then);

  final PockemonState _value;
  // ignore: unused_field
  final $Res Function(PockemonState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc
abstract class _$PockemonStateCopyWith<$Res>
    implements $PockemonStateCopyWith<$Res> {
  factory _$PockemonStateCopyWith(
          _PockemonState value, $Res Function(_PockemonState) then) =
      __$PockemonStateCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name, String? image, List<String?>? types});
}

/// @nodoc
class __$PockemonStateCopyWithImpl<$Res>
    extends _$PockemonStateCopyWithImpl<$Res>
    implements _$PockemonStateCopyWith<$Res> {
  __$PockemonStateCopyWithImpl(
      _PockemonState _value, $Res Function(_PockemonState) _then)
      : super(_value, (v) => _then(v as _PockemonState));

  @override
  _PockemonState get _value => super._value as _PockemonState;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? types = freezed,
  }) {
    return _then(_PockemonState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc

class _$_PockemonState implements _PockemonState {
  const _$_PockemonState({this.id, this.name, this.image, this.types});

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final List<String?>? types;

  @override
  String toString() {
    return 'PockemonState(id: $id, name: $name, image: $image, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PockemonState &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.types, types));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(types));

  @JsonKey(ignore: true)
  @override
  _$PockemonStateCopyWith<_PockemonState> get copyWith =>
      __$PockemonStateCopyWithImpl<_PockemonState>(this, _$identity);
}

abstract class _PockemonState implements PockemonState {
  const factory _PockemonState(
      {String? id,
      String? name,
      String? image,
      List<String?>? types}) = _$_PockemonState;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  List<String?>? get types;
  @override
  @JsonKey(ignore: true)
  _$PockemonStateCopyWith<_PockemonState> get copyWith =>
      throw _privateConstructorUsedError;
}
