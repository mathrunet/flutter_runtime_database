// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_test.dart';

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
  String? get name => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  List<int> get ids => throw _privateConstructorUsedError;

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
  $Res call({String? name, String? text, List<int> ids});
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
    Object? name = freezed,
    Object? text = freezed,
    Object? ids = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
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
  $Res call({String? name, String? text, List<int> ids});
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
    Object? name = freezed,
    Object? text = freezed,
    Object? ids = null,
  }) {
    return _then(_$_TestValue(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestValue implements _TestValue {
  const _$_TestValue({this.name, this.text, final List<int> ids = const []})
      : _ids = ids;

  factory _$_TestValue.fromJson(Map<String, dynamic> json) =>
      _$$_TestValueFromJson(json);

  @override
  final String? name;
  @override
  final String? text;
  final List<int> _ids;
  @override
  @JsonKey()
  List<int> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'TestValue(name: $name, text: $text, ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestValue &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, text, const DeepCollectionEquality().hash(_ids));

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
      {final String? name,
      final String? text,
      final List<int> ids}) = _$_TestValue;

  factory _TestValue.fromJson(Map<String, dynamic> json) =
      _$_TestValue.fromJson;

  @override
  String? get name;
  @override
  String? get text;
  @override
  List<int> get ids;
  @override
  @JsonKey(ignore: true)
  _$$_TestValueCopyWith<_$_TestValue> get copyWith =>
      throw _privateConstructorUsedError;
}

UserValue _$UserValueFromJson(Map<String, dynamic> json) {
  return _UserValue.fromJson(json);
}

/// @nodoc
mixin _$UserValue {
  String? get name => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserValueCopyWith<UserValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserValueCopyWith<$Res> {
  factory $UserValueCopyWith(UserValue value, $Res Function(UserValue) then) =
      _$UserValueCopyWithImpl<$Res, UserValue>;
  @useResult
  $Res call({String? name, String? text});
}

/// @nodoc
class _$UserValueCopyWithImpl<$Res, $Val extends UserValue>
    implements $UserValueCopyWith<$Res> {
  _$UserValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserValueCopyWith<$Res> implements $UserValueCopyWith<$Res> {
  factory _$$_UserValueCopyWith(
          _$_UserValue value, $Res Function(_$_UserValue) then) =
      __$$_UserValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? text});
}

/// @nodoc
class __$$_UserValueCopyWithImpl<$Res>
    extends _$UserValueCopyWithImpl<$Res, _$_UserValue>
    implements _$$_UserValueCopyWith<$Res> {
  __$$_UserValueCopyWithImpl(
      _$_UserValue _value, $Res Function(_$_UserValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_UserValue(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserValue implements _UserValue {
  const _$_UserValue({this.name, this.text});

  factory _$_UserValue.fromJson(Map<String, dynamic> json) =>
      _$$_UserValueFromJson(json);

  @override
  final String? name;
  @override
  final String? text;

  @override
  String toString() {
    return 'UserValue(name: $name, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserValue &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserValueCopyWith<_$_UserValue> get copyWith =>
      __$$_UserValueCopyWithImpl<_$_UserValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserValueToJson(
      this,
    );
  }
}

abstract class _UserValue implements UserValue {
  const factory _UserValue({final String? name, final String? text}) =
      _$_UserValue;

  factory _UserValue.fromJson(Map<String, dynamic> json) =
      _$_UserValue.fromJson;

  @override
  String? get name;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_UserValueCopyWith<_$_UserValue> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopValue _$ShopValueFromJson(Map<String, dynamic> json) {
  return _ShopValue.fromJson(json);
}

/// @nodoc
mixin _$ShopValue {
  String? get name => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  ModelRefBase<UserValue>? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopValueCopyWith<ShopValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopValueCopyWith<$Res> {
  factory $ShopValueCopyWith(ShopValue value, $Res Function(ShopValue) then) =
      _$ShopValueCopyWithImpl<$Res, ShopValue>;
  @useResult
  $Res call({String? name, String? text, ModelRefBase<UserValue>? user});
}

/// @nodoc
class _$ShopValueCopyWithImpl<$Res, $Val extends ShopValue>
    implements $ShopValueCopyWith<$Res> {
  _$ShopValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? text = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ModelRefBase<UserValue>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopValueCopyWith<$Res> implements $ShopValueCopyWith<$Res> {
  factory _$$_ShopValueCopyWith(
          _$_ShopValue value, $Res Function(_$_ShopValue) then) =
      __$$_ShopValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? text, ModelRefBase<UserValue>? user});
}

/// @nodoc
class __$$_ShopValueCopyWithImpl<$Res>
    extends _$ShopValueCopyWithImpl<$Res, _$_ShopValue>
    implements _$$_ShopValueCopyWith<$Res> {
  __$$_ShopValueCopyWithImpl(
      _$_ShopValue _value, $Res Function(_$_ShopValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? text = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_ShopValue(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ModelRefBase<UserValue>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopValue implements _ShopValue {
  const _$_ShopValue({this.name, this.text, this.user});

  factory _$_ShopValue.fromJson(Map<String, dynamic> json) =>
      _$$_ShopValueFromJson(json);

  @override
  final String? name;
  @override
  final String? text;
  @override
  final ModelRefBase<UserValue>? user;

  @override
  String toString() {
    return 'ShopValue(name: $name, text: $text, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopValue &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, text, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopValueCopyWith<_$_ShopValue> get copyWith =>
      __$$_ShopValueCopyWithImpl<_$_ShopValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopValueToJson(
      this,
    );
  }
}

abstract class _ShopValue implements ShopValue {
  const factory _ShopValue(
      {final String? name,
      final String? text,
      final ModelRefBase<UserValue>? user}) = _$_ShopValue;

  factory _ShopValue.fromJson(Map<String, dynamic> json) =
      _$_ShopValue.fromJson;

  @override
  String? get name;
  @override
  String? get text;
  @override
  ModelRefBase<UserValue>? get user;
  @override
  @JsonKey(ignore: true)
  _$$_ShopValueCopyWith<_$_ShopValue> get copyWith =>
      throw _privateConstructorUsedError;
}
