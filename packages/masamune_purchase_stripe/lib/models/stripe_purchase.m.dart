// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_field, unused_element, require_trailing_commas, prefer_const_constructors, unnecessary_overrides, prefer_const_literals_to_create_immutables,  unnecessary_null_in_if_null_operators, library_prefixes, directives_ordering, no_leading_underscores_for_local_identifiers, unnecessary_brace_in_string_interps, unnecessary_type_check

part of 'stripe_purchase.dart';

// **************************************************************************
// CollectionModelGenerator
// **************************************************************************

class $StripePurchaseModelDocument extends DocumentBase<StripePurchaseModel>
    with ModelRefMixin<StripePurchaseModel> {
  $StripePurchaseModelDocument(super.modelQuery);

  @override
  StripePurchaseModel fromMap(DynamicMap map) =>
      StripePurchaseModel.fromJson(map);
  @override
  DynamicMap toMap(StripePurchaseModel value) => value.toJson();
}

class $StripePurchaseModelCollection
    extends CollectionBase<$StripePurchaseModelDocument> {
  $StripePurchaseModelCollection(super.modelQuery);

  @override
  $StripePurchaseModelDocument create([String? id]) =>
      $StripePurchaseModelDocument(modelQuery.create(id));
}

enum StripePurchaseModelCollectionKey {
  userId,
  confirm,
  verified,
  captured,
  success,
  canceled,
  error,
  refund,
  orderId,
  purchaseId,
  paymentMethodId,
  customerId,
  amount,
  application,
  applicationFeeAmount,
  transferAmount,
  transferDistination,
  currency,
  clientSecret,
  createdTime,
  updatedTime,
  emailFrom,
  emailTo,
  emailTitle,
  emailContent,
  locale,
  cancelAtPeriodEnd
}

@immutable
class _$StripePurchaseModelDocumentQuery {
  const _$StripePurchaseModelDocumentQuery();

  @useResult
  _$_StripePurchaseModelDocumentQuery call(
    Object _id, {
    required String userId,
    ModelAdapter? adapter,
  }) {
    return _$_StripePurchaseModelDocumentQuery(DocumentModelQuery(
      "plugins/stripe/user/$userId/purchase/$_id",
      adapter: adapter,
    ));
  }
}

@immutable
class _$_StripePurchaseModelDocumentQuery
    extends ModelQueryBase<$StripePurchaseModelDocument> {
  const _$_StripePurchaseModelDocumentQuery(this.modelQuery);

  final DocumentModelQuery modelQuery;

  @override
  $StripePurchaseModelDocument Function() call(Ref ref) =>
      () => $StripePurchaseModelDocument(modelQuery);
  @override
  String get name => modelQuery.toString();
}

@immutable
class _$StripePurchaseModelCollectionQuery {
  const _$StripePurchaseModelCollectionQuery();

  @useResult
  _$_StripePurchaseModelCollectionQuery call({
    required String userId,
    ModelAdapter? adapter,
  }) {
    return _$_StripePurchaseModelCollectionQuery(CollectionModelQuery(
      "plugins/stripe/user/$userId/purchase",
      adapter: adapter,
    ));
  }
}

@immutable
class _$_StripePurchaseModelCollectionQuery
    extends ModelQueryBase<$StripePurchaseModelCollection> {
  const _$_StripePurchaseModelCollectionQuery(this.modelQuery);

  final CollectionModelQuery modelQuery;

  @override
  $StripePurchaseModelCollection Function() call(Ref ref) =>
      () => $StripePurchaseModelCollection(modelQuery);
  @override
  String get name => modelQuery.toString();
  _$_StripePurchaseModelCollectionQuery equal(
    StripePurchaseModelCollectionKey key,
    Object? value,
  ) {
    return _$_StripePurchaseModelCollectionQuery(
        modelQuery.equal(key.name, value));
  }

  _$_StripePurchaseModelCollectionQuery notEqual(
    StripePurchaseModelCollectionKey key,
    Object? value,
  ) {
    return _$_StripePurchaseModelCollectionQuery(
        modelQuery.notEqual(key.name, value));
  }

  _$_StripePurchaseModelCollectionQuery lessThan(
    StripePurchaseModelCollectionKey key,
    Object? value,
  ) {
    return _$_StripePurchaseModelCollectionQuery(
        modelQuery.lessThan(key.name, value));
  }

  _$_StripePurchaseModelCollectionQuery greaterThan(
    StripePurchaseModelCollectionKey key,
    Object? value,
  ) {
    return _$_StripePurchaseModelCollectionQuery(
        modelQuery.greaterThan(key.name, value));
  }

  _$_StripePurchaseModelCollectionQuery lessThanOrEqual(
    StripePurchaseModelCollectionKey key,
    Object? value,
  ) {
    return _$_StripePurchaseModelCollectionQuery(
        modelQuery.lessThanOrEqual(key.name, value));
  }

  _$_StripePurchaseModelCollectionQuery greaterThanOrEqual(
    StripePurchaseModelCollectionKey key,
    Object? value,
  ) {
    return _$_StripePurchaseModelCollectionQuery(
        modelQuery.greaterThanOrEqual(key.name, value));
  }

  _$_StripePurchaseModelCollectionQuery contains(
    StripePurchaseModelCollectionKey key,
    Object? value,
  ) {
    return _$_StripePurchaseModelCollectionQuery(
        modelQuery.contains(key.name, value));
  }

  _$_StripePurchaseModelCollectionQuery containsAny(
    StripePurchaseModelCollectionKey key,
    List<Object>? values,
  ) {
    return _$_StripePurchaseModelCollectionQuery(
        modelQuery.containsAny(key.name, values));
  }

  _$_StripePurchaseModelCollectionQuery where(
    StripePurchaseModelCollectionKey key,
    List<Object>? values,
  ) {
    return _$_StripePurchaseModelCollectionQuery(
        modelQuery.where(key.name, values));
  }

  _$_StripePurchaseModelCollectionQuery notWhere(
    StripePurchaseModelCollectionKey key,
    List<Object>? values,
  ) {
    return _$_StripePurchaseModelCollectionQuery(
        modelQuery.notWhere(key.name, values));
  }

  _$_StripePurchaseModelCollectionQuery isNull(
      StripePurchaseModelCollectionKey key) {
    return _$_StripePurchaseModelCollectionQuery(modelQuery.isNull(key.name));
  }

  _$_StripePurchaseModelCollectionQuery isNotNull(
      StripePurchaseModelCollectionKey key) {
    return _$_StripePurchaseModelCollectionQuery(
        modelQuery.isNotNull(key.name));
  }

  _$_StripePurchaseModelCollectionQuery geo(
    StripePurchaseModelCollectionKey key,
    List<String>? geoHash,
  ) {
    return _$_StripePurchaseModelCollectionQuery(
        modelQuery.geo(key.name, geoHash));
  }

  _$_StripePurchaseModelCollectionQuery orderByAsc(
      StripePurchaseModelCollectionKey key) {
    return _$_StripePurchaseModelCollectionQuery(
        modelQuery.orderByAsc(key.name));
  }

  _$_StripePurchaseModelCollectionQuery orderByDesc(
      StripePurchaseModelCollectionKey key) {
    return _$_StripePurchaseModelCollectionQuery(
        modelQuery.orderByDesc(key.name));
  }

  _$_StripePurchaseModelCollectionQuery limitTo(int value) {
    return _$_StripePurchaseModelCollectionQuery(modelQuery.limitTo(value));
  }
}