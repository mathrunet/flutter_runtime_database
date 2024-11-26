part of '/masamune_model_firebase_data_connect.dart';

/// FirebaseDataConnectConverter for [ModelDate].
///
/// [ModelDate]用のFirebaseDataConnectConverter。
class FirebaseDataConnectModelDateConverter
    extends FirebaseDataConnectModelFieldValueConverter {
  /// FirebaseDataConnectConverter for [ModelDate].
  ///
  /// [ModelDate]用のFirebaseDataConnectConverter。
  const FirebaseDataConnectModelDateConverter();

  @override
  String get type => ModelDate.typeString;

  DynamicMap? _convertFrom(Object? value) {
    if (value == null) {
      return null;
    } else if (value is DateTime) {
      return ModelDate(value).toJson();
    }
    return null;
  }

  DateTime _convertTo(DynamicMap map) {
    final val = map.get<num>(ModelDate.kTimeKey, 0.0);
    return DateTime.fromMillisecondsSinceEpoch(val.toInt());
  }

  @override
  DynamicMap? convertFrom(
    String key,
    Object? value,
    DynamicMap original, [
    FirebaseDataConnectModelAdapterBase? adapter,
  ]) {
    if (value is List) {
      if (value.isNotEmpty && value.every((e) => e is DateTime)) {
        return {
          key: value.mapAndRemoveEmpty(
            (e) => _convertFrom(e),
          ),
        };
      }
    } else if (value is Map) {
      if (value.isNotEmpty && value.values.every((e) => e is DateTime)) {
        return {
          key: value.map<String, Object?>(
            (k, v) => MapEntry(
              k,
              _convertFrom(v),
            ),
          ),
        };
      }
    } else if (value is DateTime) {
      return {
        key: _convertFrom(value),
      };
    }
    return null;
  }

  @override
  DynamicMap? convertTo(
    String key,
    Object? value,
    DynamicMap original, [
    FirebaseDataConnectModelAdapterBase? adapter,
  ]) {
    if (value is DynamicMap && value.containsKey(_kTypeKey)) {
      final type = value.get(_kTypeKey, "");
      if (type == this.type) {
        return {
          key: _convertTo(value),
        };
      }
    } else if (value is List) {
      final list = value.whereType<DynamicMap>();
      if (list.isNotEmpty && list.every((e) => e.get(_kTypeKey, "") == type)) {
        final res = <Object>[];
        for (final entry in list) {
          res.add(_convertTo(entry));
        }
        return {
          key: res,
        };
      }
    } else if (value is Map) {
      final map = value
          .where((key, value) => value is DynamicMap)
          .cast<String, DynamicMap>();
      if (map.isNotEmpty &&
          map.values.every((e) => e.get(_kTypeKey, "") == type)) {
        final res = <String, Object>{};
        for (final entry in map.entries) {
          res[entry.key] = _convertTo(entry.value);
        }
        return {
          key: res,
        };
      }
    }
    return null;
  }

  @override
  Object? convertQueryValue(
    Object? value,
    ModelQueryFilter filter,
    ModelAdapterCollectionQuery query, [
    FirebaseDataConnectModelAdapterBase? adapter,
  ]) {
    return (value as ModelDate).value;
  }

  @override
  bool enabledQuery(
    Object? value,
    ModelQueryFilter filter,
    ModelAdapterCollectionQuery query, [
    FirebaseDataConnectModelAdapterBase? adapter,
  ]) {
    return value is ModelDate;
  }
}
