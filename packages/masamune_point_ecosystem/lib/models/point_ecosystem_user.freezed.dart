// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'point_ecosystem_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PointEcosystemUserModel _$PointEcosystemUserModelFromJson(
    Map<String, dynamic> json) {
  return _PointEcosystemUserModel.fromJson(json);
}

/// @nodoc
mixin _$PointEcosystemUserModel {
  ModelTimestamp? get lastDate => throw _privateConstructorUsedError;
  int get continuousCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointEcosystemUserModelCopyWith<PointEcosystemUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointEcosystemUserModelCopyWith<$Res> {
  factory $PointEcosystemUserModelCopyWith(PointEcosystemUserModel value,
          $Res Function(PointEcosystemUserModel) then) =
      _$PointEcosystemUserModelCopyWithImpl<$Res, PointEcosystemUserModel>;
  @useResult
  $Res call({ModelTimestamp? lastDate, int continuousCount});
}

/// @nodoc
class _$PointEcosystemUserModelCopyWithImpl<$Res,
        $Val extends PointEcosystemUserModel>
    implements $PointEcosystemUserModelCopyWith<$Res> {
  _$PointEcosystemUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastDate = freezed,
    Object? continuousCount = null,
  }) {
    return _then(_value.copyWith(
      lastDate: freezed == lastDate
          ? _value.lastDate
          : lastDate // ignore: cast_nullable_to_non_nullable
              as ModelTimestamp?,
      continuousCount: null == continuousCount
          ? _value.continuousCount
          : continuousCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PointEcosystemUserModelCopyWith<$Res>
    implements $PointEcosystemUserModelCopyWith<$Res> {
  factory _$$_PointEcosystemUserModelCopyWith(_$_PointEcosystemUserModel value,
          $Res Function(_$_PointEcosystemUserModel) then) =
      __$$_PointEcosystemUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ModelTimestamp? lastDate, int continuousCount});
}

/// @nodoc
class __$$_PointEcosystemUserModelCopyWithImpl<$Res>
    extends _$PointEcosystemUserModelCopyWithImpl<$Res,
        _$_PointEcosystemUserModel>
    implements _$$_PointEcosystemUserModelCopyWith<$Res> {
  __$$_PointEcosystemUserModelCopyWithImpl(_$_PointEcosystemUserModel _value,
      $Res Function(_$_PointEcosystemUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastDate = freezed,
    Object? continuousCount = null,
  }) {
    return _then(_$_PointEcosystemUserModel(
      lastDate: freezed == lastDate
          ? _value.lastDate
          : lastDate // ignore: cast_nullable_to_non_nullable
              as ModelTimestamp?,
      continuousCount: null == continuousCount
          ? _value.continuousCount
          : continuousCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointEcosystemUserModel extends _PointEcosystemUserModel {
  const _$_PointEcosystemUserModel({this.lastDate, this.continuousCount = 0})
      : super._();

  factory _$_PointEcosystemUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_PointEcosystemUserModelFromJson(json);

  @override
  final ModelTimestamp? lastDate;
  @override
  @JsonKey()
  final int continuousCount;

  @override
  String toString() {
    return 'PointEcosystemUserModel(lastDate: $lastDate, continuousCount: $continuousCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PointEcosystemUserModel &&
            (identical(other.lastDate, lastDate) ||
                other.lastDate == lastDate) &&
            (identical(other.continuousCount, continuousCount) ||
                other.continuousCount == continuousCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lastDate, continuousCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PointEcosystemUserModelCopyWith<_$_PointEcosystemUserModel>
      get copyWith =>
          __$$_PointEcosystemUserModelCopyWithImpl<_$_PointEcosystemUserModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PointEcosystemUserModelToJson(
      this,
    );
  }
}

abstract class _PointEcosystemUserModel extends PointEcosystemUserModel {
  const factory _PointEcosystemUserModel(
      {final ModelTimestamp? lastDate,
      final int continuousCount}) = _$_PointEcosystemUserModel;
  const _PointEcosystemUserModel._() : super._();

  factory _PointEcosystemUserModel.fromJson(Map<String, dynamic> json) =
      _$_PointEcosystemUserModel.fromJson;

  @override
  ModelTimestamp? get lastDate;
  @override
  int get continuousCount;
  @override
  @JsonKey(ignore: true)
  _$$_PointEcosystemUserModelCopyWith<_$_PointEcosystemUserModel>
      get copyWith => throw _privateConstructorUsedError;
}
