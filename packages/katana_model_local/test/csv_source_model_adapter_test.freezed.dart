// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'csv_source_model_adapter_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestValue _$TestValueFromJson(Map<String, dynamic> json) {
  return _TestValue.fromJson(json);
}

/// @nodoc
mixin _$TestValue {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  double? get percent => throw _privateConstructorUsedError;
  bool get flag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestValueCopyWith<TestValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestValueCopyWith<$Res> {
  factory $TestValueCopyWith(TestValue value, $Res Function(TestValue) then) =
      _$TestValueCopyWithImpl<$Res, TestValue>;
  @useResult
  $Res call({String id, String? name, int? age, double? percent, bool flag});
}

/// @nodoc
class _$TestValueCopyWithImpl<$Res, $Val extends TestValue>
    implements $TestValueCopyWith<$Res> {
  _$TestValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? age = freezed,
    Object? percent = freezed,
    Object? flag = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      percent: freezed == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as double?,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestValueCopyWith<$Res> implements $TestValueCopyWith<$Res> {
  factory _$$_TestValueCopyWith(
          _$_TestValue value, $Res Function(_$_TestValue) then) =
      __$$_TestValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? name, int? age, double? percent, bool flag});
}

/// @nodoc
class __$$_TestValueCopyWithImpl<$Res>
    extends _$TestValueCopyWithImpl<$Res, _$_TestValue>
    implements _$$_TestValueCopyWith<$Res> {
  __$$_TestValueCopyWithImpl(
      _$_TestValue _value, $Res Function(_$_TestValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? age = freezed,
    Object? percent = freezed,
    Object? flag = null,
  }) {
    return _then(_$_TestValue(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      percent: freezed == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as double?,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestValue implements _TestValue {
  const _$_TestValue(
      {required this.id, this.name, this.age, this.percent, this.flag = false});

  factory _$_TestValue.fromJson(Map<String, dynamic> json) =>
      _$$_TestValueFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final int? age;
  @override
  final double? percent;
  @override
  @JsonKey()
  final bool flag;

  @override
  String toString() {
    return 'TestValue(id: $id, name: $name, age: $age, percent: $percent, flag: $flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestValue &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.percent, percent) || other.percent == percent) &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, age, percent, flag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestValueCopyWith<_$_TestValue> get copyWith =>
      __$$_TestValueCopyWithImpl<_$_TestValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestValueToJson(
      this,
    );
  }
}

abstract class _TestValue implements TestValue {
  const factory _TestValue(
      {required final String id,
      final String? name,
      final int? age,
      final double? percent,
      final bool flag}) = _$_TestValue;

  factory _TestValue.fromJson(Map<String, dynamic> json) =
      _$_TestValue.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  int? get age;
  @override
  double? get percent;
  @override
  bool get flag;
  @override
  @JsonKey(ignore: true)
  _$$_TestValueCopyWith<_$_TestValue> get copyWith =>
      throw _privateConstructorUsedError;
}