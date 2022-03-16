// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilterStateTearOff {
  const _$FilterStateTearOff();

  _FilterState call({bool? isAllChecked, List<CheckBoxModel>? checkboxes}) {
    return _FilterState(
      isAllChecked: isAllChecked,
      checkboxes: checkboxes,
    );
  }
}

/// @nodoc
const $FilterState = _$FilterStateTearOff();

/// @nodoc
mixin _$FilterState {
  bool? get isAllChecked => throw _privateConstructorUsedError;
  List<CheckBoxModel>? get checkboxes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterStateCopyWith<FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res>;
  $Res call({bool? isAllChecked, List<CheckBoxModel>? checkboxes});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res> implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  final FilterState _value;
  // ignore: unused_field
  final $Res Function(FilterState) _then;

  @override
  $Res call({
    Object? isAllChecked = freezed,
    Object? checkboxes = freezed,
  }) {
    return _then(_value.copyWith(
      isAllChecked: isAllChecked == freezed
          ? _value.isAllChecked
          : isAllChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
      checkboxes: checkboxes == freezed
          ? _value.checkboxes
          : checkboxes // ignore: cast_nullable_to_non_nullable
              as List<CheckBoxModel>?,
    ));
  }
}

/// @nodoc
abstract class _$FilterStateCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$FilterStateCopyWith(
          _FilterState value, $Res Function(_FilterState) then) =
      __$FilterStateCopyWithImpl<$Res>;
  @override
  $Res call({bool? isAllChecked, List<CheckBoxModel>? checkboxes});
}

/// @nodoc
class __$FilterStateCopyWithImpl<$Res> extends _$FilterStateCopyWithImpl<$Res>
    implements _$FilterStateCopyWith<$Res> {
  __$FilterStateCopyWithImpl(
      _FilterState _value, $Res Function(_FilterState) _then)
      : super(_value, (v) => _then(v as _FilterState));

  @override
  _FilterState get _value => super._value as _FilterState;

  @override
  $Res call({
    Object? isAllChecked = freezed,
    Object? checkboxes = freezed,
  }) {
    return _then(_FilterState(
      isAllChecked: isAllChecked == freezed
          ? _value.isAllChecked
          : isAllChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
      checkboxes: checkboxes == freezed
          ? _value.checkboxes
          : checkboxes // ignore: cast_nullable_to_non_nullable
              as List<CheckBoxModel>?,
    ));
  }
}

/// @nodoc

class _$_FilterState implements _FilterState {
  const _$_FilterState({this.isAllChecked, this.checkboxes});

  @override
  final bool? isAllChecked;
  @override
  final List<CheckBoxModel>? checkboxes;

  @override
  String toString() {
    return 'FilterState(isAllChecked: $isAllChecked, checkboxes: $checkboxes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FilterState &&
            const DeepCollectionEquality()
                .equals(other.isAllChecked, isAllChecked) &&
            const DeepCollectionEquality()
                .equals(other.checkboxes, checkboxes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isAllChecked),
      const DeepCollectionEquality().hash(checkboxes));

  @JsonKey(ignore: true)
  @override
  _$FilterStateCopyWith<_FilterState> get copyWith =>
      __$FilterStateCopyWithImpl<_FilterState>(this, _$identity);
}

abstract class _FilterState implements FilterState {
  const factory _FilterState(
      {bool? isAllChecked, List<CheckBoxModel>? checkboxes}) = _$_FilterState;

  @override
  bool? get isAllChecked;
  @override
  List<CheckBoxModel>? get checkboxes;
  @override
  @JsonKey(ignore: true)
  _$FilterStateCopyWith<_FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}
