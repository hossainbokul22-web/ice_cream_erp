// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ItemsTable extends Items with TableInfo<$ItemsTable, Item> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _itemCodeMeta =
      const VerificationMeta('itemCode');
  @override
  late final GeneratedColumn<String> itemCode = GeneratedColumn<String>(
      'item_code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _itemNameMeta =
      const VerificationMeta('itemName');
  @override
  late final GeneratedColumn<String> itemName = GeneratedColumn<String>(
      'item_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _itemTypeMeta =
      const VerificationMeta('itemType');
  @override
  late final GeneratedColumn<String> itemType = GeneratedColumn<String>(
      'item_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _baseUnitMeta =
      const VerificationMeta('baseUnit');
  @override
  late final GeneratedColumn<String> baseUnit = GeneratedColumn<String>(
      'base_unit', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _trackBatchMeta =
      const VerificationMeta('trackBatch');
  @override
  late final GeneratedColumn<bool> trackBatch = GeneratedColumn<bool>(
      'track_batch', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("track_batch" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _trackExpiryMeta =
      const VerificationMeta('trackExpiry');
  @override
  late final GeneratedColumn<bool> trackExpiry = GeneratedColumn<bool>(
      'track_expiry', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("track_expiry" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _isTankItemMeta =
      const VerificationMeta('isTankItem');
  @override
  late final GeneratedColumn<bool> isTankItem = GeneratedColumn<bool>(
      'is_tank_item', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_tank_item" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _standardCostMeta =
      const VerificationMeta('standardCost');
  @override
  late final GeneratedColumn<double> standardCost = GeneratedColumn<double>(
      'standard_cost', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _salesPriceMeta =
      const VerificationMeta('salesPrice');
  @override
  late final GeneratedColumn<double> salesPrice = GeneratedColumn<double>(
      'sales_price', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _minStockMeta =
      const VerificationMeta('minStock');
  @override
  late final GeneratedColumn<double> minStock = GeneratedColumn<double>(
      'min_stock', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        itemCode,
        itemName,
        itemType,
        baseUnit,
        trackBatch,
        trackExpiry,
        isTankItem,
        standardCost,
        salesPrice,
        minStock,
        isActive,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'items';
  @override
  VerificationContext validateIntegrity(Insertable<Item> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('item_code')) {
      context.handle(_itemCodeMeta,
          itemCode.isAcceptableOrUnknown(data['item_code']!, _itemCodeMeta));
    } else if (isInserting) {
      context.missing(_itemCodeMeta);
    }
    if (data.containsKey('item_name')) {
      context.handle(_itemNameMeta,
          itemName.isAcceptableOrUnknown(data['item_name']!, _itemNameMeta));
    } else if (isInserting) {
      context.missing(_itemNameMeta);
    }
    if (data.containsKey('item_type')) {
      context.handle(_itemTypeMeta,
          itemType.isAcceptableOrUnknown(data['item_type']!, _itemTypeMeta));
    } else if (isInserting) {
      context.missing(_itemTypeMeta);
    }
    if (data.containsKey('base_unit')) {
      context.handle(_baseUnitMeta,
          baseUnit.isAcceptableOrUnknown(data['base_unit']!, _baseUnitMeta));
    } else if (isInserting) {
      context.missing(_baseUnitMeta);
    }
    if (data.containsKey('track_batch')) {
      context.handle(
          _trackBatchMeta,
          trackBatch.isAcceptableOrUnknown(
              data['track_batch']!, _trackBatchMeta));
    }
    if (data.containsKey('track_expiry')) {
      context.handle(
          _trackExpiryMeta,
          trackExpiry.isAcceptableOrUnknown(
              data['track_expiry']!, _trackExpiryMeta));
    }
    if (data.containsKey('is_tank_item')) {
      context.handle(
          _isTankItemMeta,
          isTankItem.isAcceptableOrUnknown(
              data['is_tank_item']!, _isTankItemMeta));
    }
    if (data.containsKey('standard_cost')) {
      context.handle(
          _standardCostMeta,
          standardCost.isAcceptableOrUnknown(
              data['standard_cost']!, _standardCostMeta));
    }
    if (data.containsKey('sales_price')) {
      context.handle(
          _salesPriceMeta,
          salesPrice.isAcceptableOrUnknown(
              data['sales_price']!, _salesPriceMeta));
    }
    if (data.containsKey('min_stock')) {
      context.handle(_minStockMeta,
          minStock.isAcceptableOrUnknown(data['min_stock']!, _minStockMeta));
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Item map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Item(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      itemCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_code'])!,
      itemName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_name'])!,
      itemType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_type'])!,
      baseUnit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}base_unit'])!,
      trackBatch: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}track_batch'])!,
      trackExpiry: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}track_expiry'])!,
      isTankItem: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_tank_item'])!,
      standardCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}standard_cost'])!,
      salesPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}sales_price'])!,
      minStock: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}min_stock'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $ItemsTable createAlias(String alias) {
    return $ItemsTable(attachedDatabase, alias);
  }
}

class Item extends DataClass implements Insertable<Item> {
  final int id;
  final String itemCode;
  final String itemName;
  final String itemType;
  final String baseUnit;
  final bool trackBatch;
  final bool trackExpiry;
  final bool isTankItem;
  final double standardCost;
  final double salesPrice;
  final double minStock;
  final bool isActive;
  final DateTime createdAt;
  const Item(
      {required this.id,
      required this.itemCode,
      required this.itemName,
      required this.itemType,
      required this.baseUnit,
      required this.trackBatch,
      required this.trackExpiry,
      required this.isTankItem,
      required this.standardCost,
      required this.salesPrice,
      required this.minStock,
      required this.isActive,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['item_code'] = Variable<String>(itemCode);
    map['item_name'] = Variable<String>(itemName);
    map['item_type'] = Variable<String>(itemType);
    map['base_unit'] = Variable<String>(baseUnit);
    map['track_batch'] = Variable<bool>(trackBatch);
    map['track_expiry'] = Variable<bool>(trackExpiry);
    map['is_tank_item'] = Variable<bool>(isTankItem);
    map['standard_cost'] = Variable<double>(standardCost);
    map['sales_price'] = Variable<double>(salesPrice);
    map['min_stock'] = Variable<double>(minStock);
    map['is_active'] = Variable<bool>(isActive);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  ItemsCompanion toCompanion(bool nullToAbsent) {
    return ItemsCompanion(
      id: Value(id),
      itemCode: Value(itemCode),
      itemName: Value(itemName),
      itemType: Value(itemType),
      baseUnit: Value(baseUnit),
      trackBatch: Value(trackBatch),
      trackExpiry: Value(trackExpiry),
      isTankItem: Value(isTankItem),
      standardCost: Value(standardCost),
      salesPrice: Value(salesPrice),
      minStock: Value(minStock),
      isActive: Value(isActive),
      createdAt: Value(createdAt),
    );
  }

  factory Item.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Item(
      id: serializer.fromJson<int>(json['id']),
      itemCode: serializer.fromJson<String>(json['itemCode']),
      itemName: serializer.fromJson<String>(json['itemName']),
      itemType: serializer.fromJson<String>(json['itemType']),
      baseUnit: serializer.fromJson<String>(json['baseUnit']),
      trackBatch: serializer.fromJson<bool>(json['trackBatch']),
      trackExpiry: serializer.fromJson<bool>(json['trackExpiry']),
      isTankItem: serializer.fromJson<bool>(json['isTankItem']),
      standardCost: serializer.fromJson<double>(json['standardCost']),
      salesPrice: serializer.fromJson<double>(json['salesPrice']),
      minStock: serializer.fromJson<double>(json['minStock']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'itemCode': serializer.toJson<String>(itemCode),
      'itemName': serializer.toJson<String>(itemName),
      'itemType': serializer.toJson<String>(itemType),
      'baseUnit': serializer.toJson<String>(baseUnit),
      'trackBatch': serializer.toJson<bool>(trackBatch),
      'trackExpiry': serializer.toJson<bool>(trackExpiry),
      'isTankItem': serializer.toJson<bool>(isTankItem),
      'standardCost': serializer.toJson<double>(standardCost),
      'salesPrice': serializer.toJson<double>(salesPrice),
      'minStock': serializer.toJson<double>(minStock),
      'isActive': serializer.toJson<bool>(isActive),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Item copyWith(
          {int? id,
          String? itemCode,
          String? itemName,
          String? itemType,
          String? baseUnit,
          bool? trackBatch,
          bool? trackExpiry,
          bool? isTankItem,
          double? standardCost,
          double? salesPrice,
          double? minStock,
          bool? isActive,
          DateTime? createdAt}) =>
      Item(
        id: id ?? this.id,
        itemCode: itemCode ?? this.itemCode,
        itemName: itemName ?? this.itemName,
        itemType: itemType ?? this.itemType,
        baseUnit: baseUnit ?? this.baseUnit,
        trackBatch: trackBatch ?? this.trackBatch,
        trackExpiry: trackExpiry ?? this.trackExpiry,
        isTankItem: isTankItem ?? this.isTankItem,
        standardCost: standardCost ?? this.standardCost,
        salesPrice: salesPrice ?? this.salesPrice,
        minStock: minStock ?? this.minStock,
        isActive: isActive ?? this.isActive,
        createdAt: createdAt ?? this.createdAt,
      );
  Item copyWithCompanion(ItemsCompanion data) {
    return Item(
      id: data.id.present ? data.id.value : this.id,
      itemCode: data.itemCode.present ? data.itemCode.value : this.itemCode,
      itemName: data.itemName.present ? data.itemName.value : this.itemName,
      itemType: data.itemType.present ? data.itemType.value : this.itemType,
      baseUnit: data.baseUnit.present ? data.baseUnit.value : this.baseUnit,
      trackBatch:
          data.trackBatch.present ? data.trackBatch.value : this.trackBatch,
      trackExpiry:
          data.trackExpiry.present ? data.trackExpiry.value : this.trackExpiry,
      isTankItem:
          data.isTankItem.present ? data.isTankItem.value : this.isTankItem,
      standardCost: data.standardCost.present
          ? data.standardCost.value
          : this.standardCost,
      salesPrice:
          data.salesPrice.present ? data.salesPrice.value : this.salesPrice,
      minStock: data.minStock.present ? data.minStock.value : this.minStock,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Item(')
          ..write('id: $id, ')
          ..write('itemCode: $itemCode, ')
          ..write('itemName: $itemName, ')
          ..write('itemType: $itemType, ')
          ..write('baseUnit: $baseUnit, ')
          ..write('trackBatch: $trackBatch, ')
          ..write('trackExpiry: $trackExpiry, ')
          ..write('isTankItem: $isTankItem, ')
          ..write('standardCost: $standardCost, ')
          ..write('salesPrice: $salesPrice, ')
          ..write('minStock: $minStock, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      itemCode,
      itemName,
      itemType,
      baseUnit,
      trackBatch,
      trackExpiry,
      isTankItem,
      standardCost,
      salesPrice,
      minStock,
      isActive,
      createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Item &&
          other.id == this.id &&
          other.itemCode == this.itemCode &&
          other.itemName == this.itemName &&
          other.itemType == this.itemType &&
          other.baseUnit == this.baseUnit &&
          other.trackBatch == this.trackBatch &&
          other.trackExpiry == this.trackExpiry &&
          other.isTankItem == this.isTankItem &&
          other.standardCost == this.standardCost &&
          other.salesPrice == this.salesPrice &&
          other.minStock == this.minStock &&
          other.isActive == this.isActive &&
          other.createdAt == this.createdAt);
}

class ItemsCompanion extends UpdateCompanion<Item> {
  final Value<int> id;
  final Value<String> itemCode;
  final Value<String> itemName;
  final Value<String> itemType;
  final Value<String> baseUnit;
  final Value<bool> trackBatch;
  final Value<bool> trackExpiry;
  final Value<bool> isTankItem;
  final Value<double> standardCost;
  final Value<double> salesPrice;
  final Value<double> minStock;
  final Value<bool> isActive;
  final Value<DateTime> createdAt;
  const ItemsCompanion({
    this.id = const Value.absent(),
    this.itemCode = const Value.absent(),
    this.itemName = const Value.absent(),
    this.itemType = const Value.absent(),
    this.baseUnit = const Value.absent(),
    this.trackBatch = const Value.absent(),
    this.trackExpiry = const Value.absent(),
    this.isTankItem = const Value.absent(),
    this.standardCost = const Value.absent(),
    this.salesPrice = const Value.absent(),
    this.minStock = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  ItemsCompanion.insert({
    this.id = const Value.absent(),
    required String itemCode,
    required String itemName,
    required String itemType,
    required String baseUnit,
    this.trackBatch = const Value.absent(),
    this.trackExpiry = const Value.absent(),
    this.isTankItem = const Value.absent(),
    this.standardCost = const Value.absent(),
    this.salesPrice = const Value.absent(),
    this.minStock = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : itemCode = Value(itemCode),
        itemName = Value(itemName),
        itemType = Value(itemType),
        baseUnit = Value(baseUnit);
  static Insertable<Item> custom({
    Expression<int>? id,
    Expression<String>? itemCode,
    Expression<String>? itemName,
    Expression<String>? itemType,
    Expression<String>? baseUnit,
    Expression<bool>? trackBatch,
    Expression<bool>? trackExpiry,
    Expression<bool>? isTankItem,
    Expression<double>? standardCost,
    Expression<double>? salesPrice,
    Expression<double>? minStock,
    Expression<bool>? isActive,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemCode != null) 'item_code': itemCode,
      if (itemName != null) 'item_name': itemName,
      if (itemType != null) 'item_type': itemType,
      if (baseUnit != null) 'base_unit': baseUnit,
      if (trackBatch != null) 'track_batch': trackBatch,
      if (trackExpiry != null) 'track_expiry': trackExpiry,
      if (isTankItem != null) 'is_tank_item': isTankItem,
      if (standardCost != null) 'standard_cost': standardCost,
      if (salesPrice != null) 'sales_price': salesPrice,
      if (minStock != null) 'min_stock': minStock,
      if (isActive != null) 'is_active': isActive,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  ItemsCompanion copyWith(
      {Value<int>? id,
      Value<String>? itemCode,
      Value<String>? itemName,
      Value<String>? itemType,
      Value<String>? baseUnit,
      Value<bool>? trackBatch,
      Value<bool>? trackExpiry,
      Value<bool>? isTankItem,
      Value<double>? standardCost,
      Value<double>? salesPrice,
      Value<double>? minStock,
      Value<bool>? isActive,
      Value<DateTime>? createdAt}) {
    return ItemsCompanion(
      id: id ?? this.id,
      itemCode: itemCode ?? this.itemCode,
      itemName: itemName ?? this.itemName,
      itemType: itemType ?? this.itemType,
      baseUnit: baseUnit ?? this.baseUnit,
      trackBatch: trackBatch ?? this.trackBatch,
      trackExpiry: trackExpiry ?? this.trackExpiry,
      isTankItem: isTankItem ?? this.isTankItem,
      standardCost: standardCost ?? this.standardCost,
      salesPrice: salesPrice ?? this.salesPrice,
      minStock: minStock ?? this.minStock,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemCode.present) {
      map['item_code'] = Variable<String>(itemCode.value);
    }
    if (itemName.present) {
      map['item_name'] = Variable<String>(itemName.value);
    }
    if (itemType.present) {
      map['item_type'] = Variable<String>(itemType.value);
    }
    if (baseUnit.present) {
      map['base_unit'] = Variable<String>(baseUnit.value);
    }
    if (trackBatch.present) {
      map['track_batch'] = Variable<bool>(trackBatch.value);
    }
    if (trackExpiry.present) {
      map['track_expiry'] = Variable<bool>(trackExpiry.value);
    }
    if (isTankItem.present) {
      map['is_tank_item'] = Variable<bool>(isTankItem.value);
    }
    if (standardCost.present) {
      map['standard_cost'] = Variable<double>(standardCost.value);
    }
    if (salesPrice.present) {
      map['sales_price'] = Variable<double>(salesPrice.value);
    }
    if (minStock.present) {
      map['min_stock'] = Variable<double>(minStock.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemsCompanion(')
          ..write('id: $id, ')
          ..write('itemCode: $itemCode, ')
          ..write('itemName: $itemName, ')
          ..write('itemType: $itemType, ')
          ..write('baseUnit: $baseUnit, ')
          ..write('trackBatch: $trackBatch, ')
          ..write('trackExpiry: $trackExpiry, ')
          ..write('isTankItem: $isTankItem, ')
          ..write('standardCost: $standardCost, ')
          ..write('salesPrice: $salesPrice, ')
          ..write('minStock: $minStock, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $UnitsTable extends Units with TableInfo<$UnitsTable, Unit> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UnitsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _unitCodeMeta =
      const VerificationMeta('unitCode');
  @override
  late final GeneratedColumn<String> unitCode = GeneratedColumn<String>(
      'unit_code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _unitNameMeta =
      const VerificationMeta('unitName');
  @override
  late final GeneratedColumn<String> unitName = GeneratedColumn<String>(
      'unit_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, unitCode, unitName];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'units';
  @override
  VerificationContext validateIntegrity(Insertable<Unit> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('unit_code')) {
      context.handle(_unitCodeMeta,
          unitCode.isAcceptableOrUnknown(data['unit_code']!, _unitCodeMeta));
    } else if (isInserting) {
      context.missing(_unitCodeMeta);
    }
    if (data.containsKey('unit_name')) {
      context.handle(_unitNameMeta,
          unitName.isAcceptableOrUnknown(data['unit_name']!, _unitNameMeta));
    } else if (isInserting) {
      context.missing(_unitNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Unit map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Unit(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      unitCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}unit_code'])!,
      unitName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}unit_name'])!,
    );
  }

  @override
  $UnitsTable createAlias(String alias) {
    return $UnitsTable(attachedDatabase, alias);
  }
}

class Unit extends DataClass implements Insertable<Unit> {
  final int id;
  final String unitCode;
  final String unitName;
  const Unit(
      {required this.id, required this.unitCode, required this.unitName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['unit_code'] = Variable<String>(unitCode);
    map['unit_name'] = Variable<String>(unitName);
    return map;
  }

  UnitsCompanion toCompanion(bool nullToAbsent) {
    return UnitsCompanion(
      id: Value(id),
      unitCode: Value(unitCode),
      unitName: Value(unitName),
    );
  }

  factory Unit.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Unit(
      id: serializer.fromJson<int>(json['id']),
      unitCode: serializer.fromJson<String>(json['unitCode']),
      unitName: serializer.fromJson<String>(json['unitName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'unitCode': serializer.toJson<String>(unitCode),
      'unitName': serializer.toJson<String>(unitName),
    };
  }

  Unit copyWith({int? id, String? unitCode, String? unitName}) => Unit(
        id: id ?? this.id,
        unitCode: unitCode ?? this.unitCode,
        unitName: unitName ?? this.unitName,
      );
  Unit copyWithCompanion(UnitsCompanion data) {
    return Unit(
      id: data.id.present ? data.id.value : this.id,
      unitCode: data.unitCode.present ? data.unitCode.value : this.unitCode,
      unitName: data.unitName.present ? data.unitName.value : this.unitName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Unit(')
          ..write('id: $id, ')
          ..write('unitCode: $unitCode, ')
          ..write('unitName: $unitName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, unitCode, unitName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Unit &&
          other.id == this.id &&
          other.unitCode == this.unitCode &&
          other.unitName == this.unitName);
}

class UnitsCompanion extends UpdateCompanion<Unit> {
  final Value<int> id;
  final Value<String> unitCode;
  final Value<String> unitName;
  const UnitsCompanion({
    this.id = const Value.absent(),
    this.unitCode = const Value.absent(),
    this.unitName = const Value.absent(),
  });
  UnitsCompanion.insert({
    this.id = const Value.absent(),
    required String unitCode,
    required String unitName,
  })  : unitCode = Value(unitCode),
        unitName = Value(unitName);
  static Insertable<Unit> custom({
    Expression<int>? id,
    Expression<String>? unitCode,
    Expression<String>? unitName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (unitCode != null) 'unit_code': unitCode,
      if (unitName != null) 'unit_name': unitName,
    });
  }

  UnitsCompanion copyWith(
      {Value<int>? id, Value<String>? unitCode, Value<String>? unitName}) {
    return UnitsCompanion(
      id: id ?? this.id,
      unitCode: unitCode ?? this.unitCode,
      unitName: unitName ?? this.unitName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (unitCode.present) {
      map['unit_code'] = Variable<String>(unitCode.value);
    }
    if (unitName.present) {
      map['unit_name'] = Variable<String>(unitName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UnitsCompanion(')
          ..write('id: $id, ')
          ..write('unitCode: $unitCode, ')
          ..write('unitName: $unitName')
          ..write(')'))
        .toString();
  }
}

class $UnitConversionsTable extends UnitConversions
    with TableInfo<$UnitConversionsTable, UnitConversion> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UnitConversionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES items (id)'));
  static const VerificationMeta _fromUnitMeta =
      const VerificationMeta('fromUnit');
  @override
  late final GeneratedColumn<String> fromUnit = GeneratedColumn<String>(
      'from_unit', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _toUnitMeta = const VerificationMeta('toUnit');
  @override
  late final GeneratedColumn<String> toUnit = GeneratedColumn<String>(
      'to_unit', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _conversionFactorMeta =
      const VerificationMeta('conversionFactor');
  @override
  late final GeneratedColumn<double> conversionFactor = GeneratedColumn<double>(
      'conversion_factor', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, itemId, fromUnit, toUnit, conversionFactor];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'unit_conversions';
  @override
  VerificationContext validateIntegrity(Insertable<UnitConversion> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('from_unit')) {
      context.handle(_fromUnitMeta,
          fromUnit.isAcceptableOrUnknown(data['from_unit']!, _fromUnitMeta));
    } else if (isInserting) {
      context.missing(_fromUnitMeta);
    }
    if (data.containsKey('to_unit')) {
      context.handle(_toUnitMeta,
          toUnit.isAcceptableOrUnknown(data['to_unit']!, _toUnitMeta));
    } else if (isInserting) {
      context.missing(_toUnitMeta);
    }
    if (data.containsKey('conversion_factor')) {
      context.handle(
          _conversionFactorMeta,
          conversionFactor.isAcceptableOrUnknown(
              data['conversion_factor']!, _conversionFactorMeta));
    } else if (isInserting) {
      context.missing(_conversionFactorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UnitConversion map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UnitConversion(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
      fromUnit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}from_unit'])!,
      toUnit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}to_unit'])!,
      conversionFactor: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}conversion_factor'])!,
    );
  }

  @override
  $UnitConversionsTable createAlias(String alias) {
    return $UnitConversionsTable(attachedDatabase, alias);
  }
}

class UnitConversion extends DataClass implements Insertable<UnitConversion> {
  final int id;
  final int itemId;
  final String fromUnit;
  final String toUnit;
  final double conversionFactor;
  const UnitConversion(
      {required this.id,
      required this.itemId,
      required this.fromUnit,
      required this.toUnit,
      required this.conversionFactor});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['item_id'] = Variable<int>(itemId);
    map['from_unit'] = Variable<String>(fromUnit);
    map['to_unit'] = Variable<String>(toUnit);
    map['conversion_factor'] = Variable<double>(conversionFactor);
    return map;
  }

  UnitConversionsCompanion toCompanion(bool nullToAbsent) {
    return UnitConversionsCompanion(
      id: Value(id),
      itemId: Value(itemId),
      fromUnit: Value(fromUnit),
      toUnit: Value(toUnit),
      conversionFactor: Value(conversionFactor),
    );
  }

  factory UnitConversion.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UnitConversion(
      id: serializer.fromJson<int>(json['id']),
      itemId: serializer.fromJson<int>(json['itemId']),
      fromUnit: serializer.fromJson<String>(json['fromUnit']),
      toUnit: serializer.fromJson<String>(json['toUnit']),
      conversionFactor: serializer.fromJson<double>(json['conversionFactor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'itemId': serializer.toJson<int>(itemId),
      'fromUnit': serializer.toJson<String>(fromUnit),
      'toUnit': serializer.toJson<String>(toUnit),
      'conversionFactor': serializer.toJson<double>(conversionFactor),
    };
  }

  UnitConversion copyWith(
          {int? id,
          int? itemId,
          String? fromUnit,
          String? toUnit,
          double? conversionFactor}) =>
      UnitConversion(
        id: id ?? this.id,
        itemId: itemId ?? this.itemId,
        fromUnit: fromUnit ?? this.fromUnit,
        toUnit: toUnit ?? this.toUnit,
        conversionFactor: conversionFactor ?? this.conversionFactor,
      );
  UnitConversion copyWithCompanion(UnitConversionsCompanion data) {
    return UnitConversion(
      id: data.id.present ? data.id.value : this.id,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      fromUnit: data.fromUnit.present ? data.fromUnit.value : this.fromUnit,
      toUnit: data.toUnit.present ? data.toUnit.value : this.toUnit,
      conversionFactor: data.conversionFactor.present
          ? data.conversionFactor.value
          : this.conversionFactor,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UnitConversion(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('fromUnit: $fromUnit, ')
          ..write('toUnit: $toUnit, ')
          ..write('conversionFactor: $conversionFactor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, itemId, fromUnit, toUnit, conversionFactor);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UnitConversion &&
          other.id == this.id &&
          other.itemId == this.itemId &&
          other.fromUnit == this.fromUnit &&
          other.toUnit == this.toUnit &&
          other.conversionFactor == this.conversionFactor);
}

class UnitConversionsCompanion extends UpdateCompanion<UnitConversion> {
  final Value<int> id;
  final Value<int> itemId;
  final Value<String> fromUnit;
  final Value<String> toUnit;
  final Value<double> conversionFactor;
  const UnitConversionsCompanion({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    this.fromUnit = const Value.absent(),
    this.toUnit = const Value.absent(),
    this.conversionFactor = const Value.absent(),
  });
  UnitConversionsCompanion.insert({
    this.id = const Value.absent(),
    required int itemId,
    required String fromUnit,
    required String toUnit,
    required double conversionFactor,
  })  : itemId = Value(itemId),
        fromUnit = Value(fromUnit),
        toUnit = Value(toUnit),
        conversionFactor = Value(conversionFactor);
  static Insertable<UnitConversion> custom({
    Expression<int>? id,
    Expression<int>? itemId,
    Expression<String>? fromUnit,
    Expression<String>? toUnit,
    Expression<double>? conversionFactor,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemId != null) 'item_id': itemId,
      if (fromUnit != null) 'from_unit': fromUnit,
      if (toUnit != null) 'to_unit': toUnit,
      if (conversionFactor != null) 'conversion_factor': conversionFactor,
    });
  }

  UnitConversionsCompanion copyWith(
      {Value<int>? id,
      Value<int>? itemId,
      Value<String>? fromUnit,
      Value<String>? toUnit,
      Value<double>? conversionFactor}) {
    return UnitConversionsCompanion(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      fromUnit: fromUnit ?? this.fromUnit,
      toUnit: toUnit ?? this.toUnit,
      conversionFactor: conversionFactor ?? this.conversionFactor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (fromUnit.present) {
      map['from_unit'] = Variable<String>(fromUnit.value);
    }
    if (toUnit.present) {
      map['to_unit'] = Variable<String>(toUnit.value);
    }
    if (conversionFactor.present) {
      map['conversion_factor'] = Variable<double>(conversionFactor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UnitConversionsCompanion(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('fromUnit: $fromUnit, ')
          ..write('toUnit: $toUnit, ')
          ..write('conversionFactor: $conversionFactor')
          ..write(')'))
        .toString();
  }
}

class $WarehousesTable extends Warehouses
    with TableInfo<$WarehousesTable, Warehouse> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WarehousesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _warehouseCodeMeta =
      const VerificationMeta('warehouseCode');
  @override
  late final GeneratedColumn<String> warehouseCode = GeneratedColumn<String>(
      'warehouse_code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _warehouseNameMeta =
      const VerificationMeta('warehouseName');
  @override
  late final GeneratedColumn<String> warehouseName = GeneratedColumn<String>(
      'warehouse_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isDefaultMeta =
      const VerificationMeta('isDefault');
  @override
  late final GeneratedColumn<bool> isDefault = GeneratedColumn<bool>(
      'is_default', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_default" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns =>
      [id, warehouseCode, warehouseName, isDefault];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'warehouses';
  @override
  VerificationContext validateIntegrity(Insertable<Warehouse> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('warehouse_code')) {
      context.handle(
          _warehouseCodeMeta,
          warehouseCode.isAcceptableOrUnknown(
              data['warehouse_code']!, _warehouseCodeMeta));
    } else if (isInserting) {
      context.missing(_warehouseCodeMeta);
    }
    if (data.containsKey('warehouse_name')) {
      context.handle(
          _warehouseNameMeta,
          warehouseName.isAcceptableOrUnknown(
              data['warehouse_name']!, _warehouseNameMeta));
    } else if (isInserting) {
      context.missing(_warehouseNameMeta);
    }
    if (data.containsKey('is_default')) {
      context.handle(_isDefaultMeta,
          isDefault.isAcceptableOrUnknown(data['is_default']!, _isDefaultMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Warehouse map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Warehouse(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      warehouseCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}warehouse_code'])!,
      warehouseName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}warehouse_name'])!,
      isDefault: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_default'])!,
    );
  }

  @override
  $WarehousesTable createAlias(String alias) {
    return $WarehousesTable(attachedDatabase, alias);
  }
}

class Warehouse extends DataClass implements Insertable<Warehouse> {
  final int id;
  final String warehouseCode;
  final String warehouseName;
  final bool isDefault;
  const Warehouse(
      {required this.id,
      required this.warehouseCode,
      required this.warehouseName,
      required this.isDefault});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['warehouse_code'] = Variable<String>(warehouseCode);
    map['warehouse_name'] = Variable<String>(warehouseName);
    map['is_default'] = Variable<bool>(isDefault);
    return map;
  }

  WarehousesCompanion toCompanion(bool nullToAbsent) {
    return WarehousesCompanion(
      id: Value(id),
      warehouseCode: Value(warehouseCode),
      warehouseName: Value(warehouseName),
      isDefault: Value(isDefault),
    );
  }

  factory Warehouse.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Warehouse(
      id: serializer.fromJson<int>(json['id']),
      warehouseCode: serializer.fromJson<String>(json['warehouseCode']),
      warehouseName: serializer.fromJson<String>(json['warehouseName']),
      isDefault: serializer.fromJson<bool>(json['isDefault']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'warehouseCode': serializer.toJson<String>(warehouseCode),
      'warehouseName': serializer.toJson<String>(warehouseName),
      'isDefault': serializer.toJson<bool>(isDefault),
    };
  }

  Warehouse copyWith(
          {int? id,
          String? warehouseCode,
          String? warehouseName,
          bool? isDefault}) =>
      Warehouse(
        id: id ?? this.id,
        warehouseCode: warehouseCode ?? this.warehouseCode,
        warehouseName: warehouseName ?? this.warehouseName,
        isDefault: isDefault ?? this.isDefault,
      );
  Warehouse copyWithCompanion(WarehousesCompanion data) {
    return Warehouse(
      id: data.id.present ? data.id.value : this.id,
      warehouseCode: data.warehouseCode.present
          ? data.warehouseCode.value
          : this.warehouseCode,
      warehouseName: data.warehouseName.present
          ? data.warehouseName.value
          : this.warehouseName,
      isDefault: data.isDefault.present ? data.isDefault.value : this.isDefault,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Warehouse(')
          ..write('id: $id, ')
          ..write('warehouseCode: $warehouseCode, ')
          ..write('warehouseName: $warehouseName, ')
          ..write('isDefault: $isDefault')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, warehouseCode, warehouseName, isDefault);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Warehouse &&
          other.id == this.id &&
          other.warehouseCode == this.warehouseCode &&
          other.warehouseName == this.warehouseName &&
          other.isDefault == this.isDefault);
}

class WarehousesCompanion extends UpdateCompanion<Warehouse> {
  final Value<int> id;
  final Value<String> warehouseCode;
  final Value<String> warehouseName;
  final Value<bool> isDefault;
  const WarehousesCompanion({
    this.id = const Value.absent(),
    this.warehouseCode = const Value.absent(),
    this.warehouseName = const Value.absent(),
    this.isDefault = const Value.absent(),
  });
  WarehousesCompanion.insert({
    this.id = const Value.absent(),
    required String warehouseCode,
    required String warehouseName,
    this.isDefault = const Value.absent(),
  })  : warehouseCode = Value(warehouseCode),
        warehouseName = Value(warehouseName);
  static Insertable<Warehouse> custom({
    Expression<int>? id,
    Expression<String>? warehouseCode,
    Expression<String>? warehouseName,
    Expression<bool>? isDefault,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (warehouseCode != null) 'warehouse_code': warehouseCode,
      if (warehouseName != null) 'warehouse_name': warehouseName,
      if (isDefault != null) 'is_default': isDefault,
    });
  }

  WarehousesCompanion copyWith(
      {Value<int>? id,
      Value<String>? warehouseCode,
      Value<String>? warehouseName,
      Value<bool>? isDefault}) {
    return WarehousesCompanion(
      id: id ?? this.id,
      warehouseCode: warehouseCode ?? this.warehouseCode,
      warehouseName: warehouseName ?? this.warehouseName,
      isDefault: isDefault ?? this.isDefault,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (warehouseCode.present) {
      map['warehouse_code'] = Variable<String>(warehouseCode.value);
    }
    if (warehouseName.present) {
      map['warehouse_name'] = Variable<String>(warehouseName.value);
    }
    if (isDefault.present) {
      map['is_default'] = Variable<bool>(isDefault.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WarehousesCompanion(')
          ..write('id: $id, ')
          ..write('warehouseCode: $warehouseCode, ')
          ..write('warehouseName: $warehouseName, ')
          ..write('isDefault: $isDefault')
          ..write(')'))
        .toString();
  }
}

class $TanksTable extends Tanks with TableInfo<$TanksTable, Tank> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TanksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _tankCodeMeta =
      const VerificationMeta('tankCode');
  @override
  late final GeneratedColumn<String> tankCode = GeneratedColumn<String>(
      'tank_code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _tankNameMeta =
      const VerificationMeta('tankName');
  @override
  late final GeneratedColumn<String> tankName = GeneratedColumn<String>(
      'tank_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tankTypeMeta =
      const VerificationMeta('tankType');
  @override
  late final GeneratedColumn<String> tankType = GeneratedColumn<String>(
      'tank_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _capacityLiterMeta =
      const VerificationMeta('capacityLiter');
  @override
  late final GeneratedColumn<double> capacityLiter = GeneratedColumn<double>(
      'capacity_liter', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _currentItemIdMeta =
      const VerificationMeta('currentItemId');
  @override
  late final GeneratedColumn<int> currentItemId = GeneratedColumn<int>(
      'current_item_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES items (id)'));
  static const VerificationMeta _currentBatchIdMeta =
      const VerificationMeta('currentBatchId');
  @override
  late final GeneratedColumn<int> currentBatchId = GeneratedColumn<int>(
      'current_batch_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _currentQtyMeta =
      const VerificationMeta('currentQty');
  @override
  late final GeneratedColumn<double> currentQty = GeneratedColumn<double>(
      'current_qty', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('Empty'));
  static const VerificationMeta _warehouseIdMeta =
      const VerificationMeta('warehouseId');
  @override
  late final GeneratedColumn<int> warehouseId = GeneratedColumn<int>(
      'warehouse_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES warehouses (id)'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        tankCode,
        tankName,
        tankType,
        capacityLiter,
        currentItemId,
        currentBatchId,
        currentQty,
        status,
        warehouseId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tanks';
  @override
  VerificationContext validateIntegrity(Insertable<Tank> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('tank_code')) {
      context.handle(_tankCodeMeta,
          tankCode.isAcceptableOrUnknown(data['tank_code']!, _tankCodeMeta));
    } else if (isInserting) {
      context.missing(_tankCodeMeta);
    }
    if (data.containsKey('tank_name')) {
      context.handle(_tankNameMeta,
          tankName.isAcceptableOrUnknown(data['tank_name']!, _tankNameMeta));
    } else if (isInserting) {
      context.missing(_tankNameMeta);
    }
    if (data.containsKey('tank_type')) {
      context.handle(_tankTypeMeta,
          tankType.isAcceptableOrUnknown(data['tank_type']!, _tankTypeMeta));
    } else if (isInserting) {
      context.missing(_tankTypeMeta);
    }
    if (data.containsKey('capacity_liter')) {
      context.handle(
          _capacityLiterMeta,
          capacityLiter.isAcceptableOrUnknown(
              data['capacity_liter']!, _capacityLiterMeta));
    } else if (isInserting) {
      context.missing(_capacityLiterMeta);
    }
    if (data.containsKey('current_item_id')) {
      context.handle(
          _currentItemIdMeta,
          currentItemId.isAcceptableOrUnknown(
              data['current_item_id']!, _currentItemIdMeta));
    }
    if (data.containsKey('current_batch_id')) {
      context.handle(
          _currentBatchIdMeta,
          currentBatchId.isAcceptableOrUnknown(
              data['current_batch_id']!, _currentBatchIdMeta));
    }
    if (data.containsKey('current_qty')) {
      context.handle(
          _currentQtyMeta,
          currentQty.isAcceptableOrUnknown(
              data['current_qty']!, _currentQtyMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('warehouse_id')) {
      context.handle(
          _warehouseIdMeta,
          warehouseId.isAcceptableOrUnknown(
              data['warehouse_id']!, _warehouseIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Tank map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Tank(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      tankCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tank_code'])!,
      tankName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tank_name'])!,
      tankType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tank_type'])!,
      capacityLiter: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}capacity_liter'])!,
      currentItemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}current_item_id']),
      currentBatchId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}current_batch_id']),
      currentQty: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}current_qty'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      warehouseId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}warehouse_id']),
    );
  }

  @override
  $TanksTable createAlias(String alias) {
    return $TanksTable(attachedDatabase, alias);
  }
}

class Tank extends DataClass implements Insertable<Tank> {
  final int id;
  final String tankCode;
  final String tankName;
  final String tankType;
  final double capacityLiter;
  final int? currentItemId;
  final int? currentBatchId;
  final double currentQty;
  final String status;
  final int? warehouseId;
  const Tank(
      {required this.id,
      required this.tankCode,
      required this.tankName,
      required this.tankType,
      required this.capacityLiter,
      this.currentItemId,
      this.currentBatchId,
      required this.currentQty,
      required this.status,
      this.warehouseId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['tank_code'] = Variable<String>(tankCode);
    map['tank_name'] = Variable<String>(tankName);
    map['tank_type'] = Variable<String>(tankType);
    map['capacity_liter'] = Variable<double>(capacityLiter);
    if (!nullToAbsent || currentItemId != null) {
      map['current_item_id'] = Variable<int>(currentItemId);
    }
    if (!nullToAbsent || currentBatchId != null) {
      map['current_batch_id'] = Variable<int>(currentBatchId);
    }
    map['current_qty'] = Variable<double>(currentQty);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || warehouseId != null) {
      map['warehouse_id'] = Variable<int>(warehouseId);
    }
    return map;
  }

  TanksCompanion toCompanion(bool nullToAbsent) {
    return TanksCompanion(
      id: Value(id),
      tankCode: Value(tankCode),
      tankName: Value(tankName),
      tankType: Value(tankType),
      capacityLiter: Value(capacityLiter),
      currentItemId: currentItemId == null && nullToAbsent
          ? const Value.absent()
          : Value(currentItemId),
      currentBatchId: currentBatchId == null && nullToAbsent
          ? const Value.absent()
          : Value(currentBatchId),
      currentQty: Value(currentQty),
      status: Value(status),
      warehouseId: warehouseId == null && nullToAbsent
          ? const Value.absent()
          : Value(warehouseId),
    );
  }

  factory Tank.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Tank(
      id: serializer.fromJson<int>(json['id']),
      tankCode: serializer.fromJson<String>(json['tankCode']),
      tankName: serializer.fromJson<String>(json['tankName']),
      tankType: serializer.fromJson<String>(json['tankType']),
      capacityLiter: serializer.fromJson<double>(json['capacityLiter']),
      currentItemId: serializer.fromJson<int?>(json['currentItemId']),
      currentBatchId: serializer.fromJson<int?>(json['currentBatchId']),
      currentQty: serializer.fromJson<double>(json['currentQty']),
      status: serializer.fromJson<String>(json['status']),
      warehouseId: serializer.fromJson<int?>(json['warehouseId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'tankCode': serializer.toJson<String>(tankCode),
      'tankName': serializer.toJson<String>(tankName),
      'tankType': serializer.toJson<String>(tankType),
      'capacityLiter': serializer.toJson<double>(capacityLiter),
      'currentItemId': serializer.toJson<int?>(currentItemId),
      'currentBatchId': serializer.toJson<int?>(currentBatchId),
      'currentQty': serializer.toJson<double>(currentQty),
      'status': serializer.toJson<String>(status),
      'warehouseId': serializer.toJson<int?>(warehouseId),
    };
  }

  Tank copyWith(
          {int? id,
          String? tankCode,
          String? tankName,
          String? tankType,
          double? capacityLiter,
          Value<int?> currentItemId = const Value.absent(),
          Value<int?> currentBatchId = const Value.absent(),
          double? currentQty,
          String? status,
          Value<int?> warehouseId = const Value.absent()}) =>
      Tank(
        id: id ?? this.id,
        tankCode: tankCode ?? this.tankCode,
        tankName: tankName ?? this.tankName,
        tankType: tankType ?? this.tankType,
        capacityLiter: capacityLiter ?? this.capacityLiter,
        currentItemId:
            currentItemId.present ? currentItemId.value : this.currentItemId,
        currentBatchId:
            currentBatchId.present ? currentBatchId.value : this.currentBatchId,
        currentQty: currentQty ?? this.currentQty,
        status: status ?? this.status,
        warehouseId: warehouseId.present ? warehouseId.value : this.warehouseId,
      );
  Tank copyWithCompanion(TanksCompanion data) {
    return Tank(
      id: data.id.present ? data.id.value : this.id,
      tankCode: data.tankCode.present ? data.tankCode.value : this.tankCode,
      tankName: data.tankName.present ? data.tankName.value : this.tankName,
      tankType: data.tankType.present ? data.tankType.value : this.tankType,
      capacityLiter: data.capacityLiter.present
          ? data.capacityLiter.value
          : this.capacityLiter,
      currentItemId: data.currentItemId.present
          ? data.currentItemId.value
          : this.currentItemId,
      currentBatchId: data.currentBatchId.present
          ? data.currentBatchId.value
          : this.currentBatchId,
      currentQty:
          data.currentQty.present ? data.currentQty.value : this.currentQty,
      status: data.status.present ? data.status.value : this.status,
      warehouseId:
          data.warehouseId.present ? data.warehouseId.value : this.warehouseId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Tank(')
          ..write('id: $id, ')
          ..write('tankCode: $tankCode, ')
          ..write('tankName: $tankName, ')
          ..write('tankType: $tankType, ')
          ..write('capacityLiter: $capacityLiter, ')
          ..write('currentItemId: $currentItemId, ')
          ..write('currentBatchId: $currentBatchId, ')
          ..write('currentQty: $currentQty, ')
          ..write('status: $status, ')
          ..write('warehouseId: $warehouseId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      tankCode,
      tankName,
      tankType,
      capacityLiter,
      currentItemId,
      currentBatchId,
      currentQty,
      status,
      warehouseId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tank &&
          other.id == this.id &&
          other.tankCode == this.tankCode &&
          other.tankName == this.tankName &&
          other.tankType == this.tankType &&
          other.capacityLiter == this.capacityLiter &&
          other.currentItemId == this.currentItemId &&
          other.currentBatchId == this.currentBatchId &&
          other.currentQty == this.currentQty &&
          other.status == this.status &&
          other.warehouseId == this.warehouseId);
}

class TanksCompanion extends UpdateCompanion<Tank> {
  final Value<int> id;
  final Value<String> tankCode;
  final Value<String> tankName;
  final Value<String> tankType;
  final Value<double> capacityLiter;
  final Value<int?> currentItemId;
  final Value<int?> currentBatchId;
  final Value<double> currentQty;
  final Value<String> status;
  final Value<int?> warehouseId;
  const TanksCompanion({
    this.id = const Value.absent(),
    this.tankCode = const Value.absent(),
    this.tankName = const Value.absent(),
    this.tankType = const Value.absent(),
    this.capacityLiter = const Value.absent(),
    this.currentItemId = const Value.absent(),
    this.currentBatchId = const Value.absent(),
    this.currentQty = const Value.absent(),
    this.status = const Value.absent(),
    this.warehouseId = const Value.absent(),
  });
  TanksCompanion.insert({
    this.id = const Value.absent(),
    required String tankCode,
    required String tankName,
    required String tankType,
    required double capacityLiter,
    this.currentItemId = const Value.absent(),
    this.currentBatchId = const Value.absent(),
    this.currentQty = const Value.absent(),
    this.status = const Value.absent(),
    this.warehouseId = const Value.absent(),
  })  : tankCode = Value(tankCode),
        tankName = Value(tankName),
        tankType = Value(tankType),
        capacityLiter = Value(capacityLiter);
  static Insertable<Tank> custom({
    Expression<int>? id,
    Expression<String>? tankCode,
    Expression<String>? tankName,
    Expression<String>? tankType,
    Expression<double>? capacityLiter,
    Expression<int>? currentItemId,
    Expression<int>? currentBatchId,
    Expression<double>? currentQty,
    Expression<String>? status,
    Expression<int>? warehouseId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tankCode != null) 'tank_code': tankCode,
      if (tankName != null) 'tank_name': tankName,
      if (tankType != null) 'tank_type': tankType,
      if (capacityLiter != null) 'capacity_liter': capacityLiter,
      if (currentItemId != null) 'current_item_id': currentItemId,
      if (currentBatchId != null) 'current_batch_id': currentBatchId,
      if (currentQty != null) 'current_qty': currentQty,
      if (status != null) 'status': status,
      if (warehouseId != null) 'warehouse_id': warehouseId,
    });
  }

  TanksCompanion copyWith(
      {Value<int>? id,
      Value<String>? tankCode,
      Value<String>? tankName,
      Value<String>? tankType,
      Value<double>? capacityLiter,
      Value<int?>? currentItemId,
      Value<int?>? currentBatchId,
      Value<double>? currentQty,
      Value<String>? status,
      Value<int?>? warehouseId}) {
    return TanksCompanion(
      id: id ?? this.id,
      tankCode: tankCode ?? this.tankCode,
      tankName: tankName ?? this.tankName,
      tankType: tankType ?? this.tankType,
      capacityLiter: capacityLiter ?? this.capacityLiter,
      currentItemId: currentItemId ?? this.currentItemId,
      currentBatchId: currentBatchId ?? this.currentBatchId,
      currentQty: currentQty ?? this.currentQty,
      status: status ?? this.status,
      warehouseId: warehouseId ?? this.warehouseId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (tankCode.present) {
      map['tank_code'] = Variable<String>(tankCode.value);
    }
    if (tankName.present) {
      map['tank_name'] = Variable<String>(tankName.value);
    }
    if (tankType.present) {
      map['tank_type'] = Variable<String>(tankType.value);
    }
    if (capacityLiter.present) {
      map['capacity_liter'] = Variable<double>(capacityLiter.value);
    }
    if (currentItemId.present) {
      map['current_item_id'] = Variable<int>(currentItemId.value);
    }
    if (currentBatchId.present) {
      map['current_batch_id'] = Variable<int>(currentBatchId.value);
    }
    if (currentQty.present) {
      map['current_qty'] = Variable<double>(currentQty.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (warehouseId.present) {
      map['warehouse_id'] = Variable<int>(warehouseId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TanksCompanion(')
          ..write('id: $id, ')
          ..write('tankCode: $tankCode, ')
          ..write('tankName: $tankName, ')
          ..write('tankType: $tankType, ')
          ..write('capacityLiter: $capacityLiter, ')
          ..write('currentItemId: $currentItemId, ')
          ..write('currentBatchId: $currentBatchId, ')
          ..write('currentQty: $currentQty, ')
          ..write('status: $status, ')
          ..write('warehouseId: $warehouseId')
          ..write(')'))
        .toString();
  }
}

class $PartiesTable extends Parties with TableInfo<$PartiesTable, Party> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PartiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _partyCodeMeta =
      const VerificationMeta('partyCode');
  @override
  late final GeneratedColumn<String> partyCode = GeneratedColumn<String>(
      'party_code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _partyNameMeta =
      const VerificationMeta('partyName');
  @override
  late final GeneratedColumn<String> partyName = GeneratedColumn<String>(
      'party_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _partyTypeMeta =
      const VerificationMeta('partyType');
  @override
  late final GeneratedColumn<String> partyType = GeneratedColumn<String>(
      'party_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _openingBalanceMeta =
      const VerificationMeta('openingBalance');
  @override
  late final GeneratedColumn<double> openingBalance = GeneratedColumn<double>(
      'opening_balance', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        partyCode,
        partyName,
        partyType,
        phone,
        address,
        openingBalance,
        isActive
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'parties';
  @override
  VerificationContext validateIntegrity(Insertable<Party> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('party_code')) {
      context.handle(_partyCodeMeta,
          partyCode.isAcceptableOrUnknown(data['party_code']!, _partyCodeMeta));
    } else if (isInserting) {
      context.missing(_partyCodeMeta);
    }
    if (data.containsKey('party_name')) {
      context.handle(_partyNameMeta,
          partyName.isAcceptableOrUnknown(data['party_name']!, _partyNameMeta));
    } else if (isInserting) {
      context.missing(_partyNameMeta);
    }
    if (data.containsKey('party_type')) {
      context.handle(_partyTypeMeta,
          partyType.isAcceptableOrUnknown(data['party_type']!, _partyTypeMeta));
    } else if (isInserting) {
      context.missing(_partyTypeMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    }
    if (data.containsKey('opening_balance')) {
      context.handle(
          _openingBalanceMeta,
          openingBalance.isAcceptableOrUnknown(
              data['opening_balance']!, _openingBalanceMeta));
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Party map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Party(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      partyCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}party_code'])!,
      partyName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}party_name'])!,
      partyType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}party_type'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone']),
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address']),
      openingBalance: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}opening_balance'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
    );
  }

  @override
  $PartiesTable createAlias(String alias) {
    return $PartiesTable(attachedDatabase, alias);
  }
}

class Party extends DataClass implements Insertable<Party> {
  final int id;
  final String partyCode;
  final String partyName;
  final String partyType;
  final String? phone;
  final String? address;
  final double openingBalance;
  final bool isActive;
  const Party(
      {required this.id,
      required this.partyCode,
      required this.partyName,
      required this.partyType,
      this.phone,
      this.address,
      required this.openingBalance,
      required this.isActive});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['party_code'] = Variable<String>(partyCode);
    map['party_name'] = Variable<String>(partyName);
    map['party_type'] = Variable<String>(partyType);
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    map['opening_balance'] = Variable<double>(openingBalance);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  PartiesCompanion toCompanion(bool nullToAbsent) {
    return PartiesCompanion(
      id: Value(id),
      partyCode: Value(partyCode),
      partyName: Value(partyName),
      partyType: Value(partyType),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      openingBalance: Value(openingBalance),
      isActive: Value(isActive),
    );
  }

  factory Party.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Party(
      id: serializer.fromJson<int>(json['id']),
      partyCode: serializer.fromJson<String>(json['partyCode']),
      partyName: serializer.fromJson<String>(json['partyName']),
      partyType: serializer.fromJson<String>(json['partyType']),
      phone: serializer.fromJson<String?>(json['phone']),
      address: serializer.fromJson<String?>(json['address']),
      openingBalance: serializer.fromJson<double>(json['openingBalance']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'partyCode': serializer.toJson<String>(partyCode),
      'partyName': serializer.toJson<String>(partyName),
      'partyType': serializer.toJson<String>(partyType),
      'phone': serializer.toJson<String?>(phone),
      'address': serializer.toJson<String?>(address),
      'openingBalance': serializer.toJson<double>(openingBalance),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  Party copyWith(
          {int? id,
          String? partyCode,
          String? partyName,
          String? partyType,
          Value<String?> phone = const Value.absent(),
          Value<String?> address = const Value.absent(),
          double? openingBalance,
          bool? isActive}) =>
      Party(
        id: id ?? this.id,
        partyCode: partyCode ?? this.partyCode,
        partyName: partyName ?? this.partyName,
        partyType: partyType ?? this.partyType,
        phone: phone.present ? phone.value : this.phone,
        address: address.present ? address.value : this.address,
        openingBalance: openingBalance ?? this.openingBalance,
        isActive: isActive ?? this.isActive,
      );
  Party copyWithCompanion(PartiesCompanion data) {
    return Party(
      id: data.id.present ? data.id.value : this.id,
      partyCode: data.partyCode.present ? data.partyCode.value : this.partyCode,
      partyName: data.partyName.present ? data.partyName.value : this.partyName,
      partyType: data.partyType.present ? data.partyType.value : this.partyType,
      phone: data.phone.present ? data.phone.value : this.phone,
      address: data.address.present ? data.address.value : this.address,
      openingBalance: data.openingBalance.present
          ? data.openingBalance.value
          : this.openingBalance,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Party(')
          ..write('id: $id, ')
          ..write('partyCode: $partyCode, ')
          ..write('partyName: $partyName, ')
          ..write('partyType: $partyType, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('openingBalance: $openingBalance, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, partyCode, partyName, partyType, phone,
      address, openingBalance, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Party &&
          other.id == this.id &&
          other.partyCode == this.partyCode &&
          other.partyName == this.partyName &&
          other.partyType == this.partyType &&
          other.phone == this.phone &&
          other.address == this.address &&
          other.openingBalance == this.openingBalance &&
          other.isActive == this.isActive);
}

class PartiesCompanion extends UpdateCompanion<Party> {
  final Value<int> id;
  final Value<String> partyCode;
  final Value<String> partyName;
  final Value<String> partyType;
  final Value<String?> phone;
  final Value<String?> address;
  final Value<double> openingBalance;
  final Value<bool> isActive;
  const PartiesCompanion({
    this.id = const Value.absent(),
    this.partyCode = const Value.absent(),
    this.partyName = const Value.absent(),
    this.partyType = const Value.absent(),
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.openingBalance = const Value.absent(),
    this.isActive = const Value.absent(),
  });
  PartiesCompanion.insert({
    this.id = const Value.absent(),
    required String partyCode,
    required String partyName,
    required String partyType,
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.openingBalance = const Value.absent(),
    this.isActive = const Value.absent(),
  })  : partyCode = Value(partyCode),
        partyName = Value(partyName),
        partyType = Value(partyType);
  static Insertable<Party> custom({
    Expression<int>? id,
    Expression<String>? partyCode,
    Expression<String>? partyName,
    Expression<String>? partyType,
    Expression<String>? phone,
    Expression<String>? address,
    Expression<double>? openingBalance,
    Expression<bool>? isActive,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (partyCode != null) 'party_code': partyCode,
      if (partyName != null) 'party_name': partyName,
      if (partyType != null) 'party_type': partyType,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
      if (openingBalance != null) 'opening_balance': openingBalance,
      if (isActive != null) 'is_active': isActive,
    });
  }

  PartiesCompanion copyWith(
      {Value<int>? id,
      Value<String>? partyCode,
      Value<String>? partyName,
      Value<String>? partyType,
      Value<String?>? phone,
      Value<String?>? address,
      Value<double>? openingBalance,
      Value<bool>? isActive}) {
    return PartiesCompanion(
      id: id ?? this.id,
      partyCode: partyCode ?? this.partyCode,
      partyName: partyName ?? this.partyName,
      partyType: partyType ?? this.partyType,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      openingBalance: openingBalance ?? this.openingBalance,
      isActive: isActive ?? this.isActive,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (partyCode.present) {
      map['party_code'] = Variable<String>(partyCode.value);
    }
    if (partyName.present) {
      map['party_name'] = Variable<String>(partyName.value);
    }
    if (partyType.present) {
      map['party_type'] = Variable<String>(partyType.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (openingBalance.present) {
      map['opening_balance'] = Variable<double>(openingBalance.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PartiesCompanion(')
          ..write('id: $id, ')
          ..write('partyCode: $partyCode, ')
          ..write('partyName: $partyName, ')
          ..write('partyType: $partyType, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('openingBalance: $openingBalance, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }
}

class $RecipesTable extends Recipes with TableInfo<$RecipesTable, Recipe> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecipesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _recipeCodeMeta =
      const VerificationMeta('recipeCode');
  @override
  late final GeneratedColumn<String> recipeCode = GeneratedColumn<String>(
      'recipe_code', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _recipeNameMeta =
      const VerificationMeta('recipeName');
  @override
  late final GeneratedColumn<String> recipeName = GeneratedColumn<String>(
      'recipe_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _finishedItemIdMeta =
      const VerificationMeta('finishedItemId');
  @override
  late final GeneratedColumn<int> finishedItemId = GeneratedColumn<int>(
      'finished_item_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES items (id)'));
  static const VerificationMeta _baseQtyMeta =
      const VerificationMeta('baseQty');
  @override
  late final GeneratedColumn<double> baseQty = GeneratedColumn<double>(
      'base_qty', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _baseUnitMeta =
      const VerificationMeta('baseUnit');
  @override
  late final GeneratedColumn<String> baseUnit = GeneratedColumn<String>(
      'base_unit', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _targetOverrunMeta =
      const VerificationMeta('targetOverrun');
  @override
  late final GeneratedColumn<double> targetOverrun = GeneratedColumn<double>(
      'target_overrun', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(100.0));
  static const VerificationMeta _expectedYieldMeta =
      const VerificationMeta('expectedYield');
  @override
  late final GeneratedColumn<double> expectedYield = GeneratedColumn<double>(
      'expected_yield', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(98.0));
  static const VerificationMeta _versionMeta =
      const VerificationMeta('version');
  @override
  late final GeneratedColumn<int> version = GeneratedColumn<int>(
      'version', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  static const VerificationMeta _isActiveMeta =
      const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
      'is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        recipeCode,
        recipeName,
        finishedItemId,
        baseQty,
        baseUnit,
        targetOverrun,
        expectedYield,
        version,
        isActive,
        notes
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'recipes';
  @override
  VerificationContext validateIntegrity(Insertable<Recipe> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('recipe_code')) {
      context.handle(
          _recipeCodeMeta,
          recipeCode.isAcceptableOrUnknown(
              data['recipe_code']!, _recipeCodeMeta));
    } else if (isInserting) {
      context.missing(_recipeCodeMeta);
    }
    if (data.containsKey('recipe_name')) {
      context.handle(
          _recipeNameMeta,
          recipeName.isAcceptableOrUnknown(
              data['recipe_name']!, _recipeNameMeta));
    } else if (isInserting) {
      context.missing(_recipeNameMeta);
    }
    if (data.containsKey('finished_item_id')) {
      context.handle(
          _finishedItemIdMeta,
          finishedItemId.isAcceptableOrUnknown(
              data['finished_item_id']!, _finishedItemIdMeta));
    } else if (isInserting) {
      context.missing(_finishedItemIdMeta);
    }
    if (data.containsKey('base_qty')) {
      context.handle(_baseQtyMeta,
          baseQty.isAcceptableOrUnknown(data['base_qty']!, _baseQtyMeta));
    } else if (isInserting) {
      context.missing(_baseQtyMeta);
    }
    if (data.containsKey('base_unit')) {
      context.handle(_baseUnitMeta,
          baseUnit.isAcceptableOrUnknown(data['base_unit']!, _baseUnitMeta));
    } else if (isInserting) {
      context.missing(_baseUnitMeta);
    }
    if (data.containsKey('target_overrun')) {
      context.handle(
          _targetOverrunMeta,
          targetOverrun.isAcceptableOrUnknown(
              data['target_overrun']!, _targetOverrunMeta));
    }
    if (data.containsKey('expected_yield')) {
      context.handle(
          _expectedYieldMeta,
          expectedYield.isAcceptableOrUnknown(
              data['expected_yield']!, _expectedYieldMeta));
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Recipe map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Recipe(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recipeCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}recipe_code'])!,
      recipeName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}recipe_name'])!,
      finishedItemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}finished_item_id'])!,
      baseQty: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}base_qty'])!,
      baseUnit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}base_unit'])!,
      targetOverrun: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}target_overrun'])!,
      expectedYield: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}expected_yield'])!,
      version: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}version'])!,
      isActive: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
    );
  }

  @override
  $RecipesTable createAlias(String alias) {
    return $RecipesTable(attachedDatabase, alias);
  }
}

class Recipe extends DataClass implements Insertable<Recipe> {
  final int id;
  final String recipeCode;
  final String recipeName;
  final int finishedItemId;
  final double baseQty;
  final String baseUnit;
  final double targetOverrun;
  final double expectedYield;
  final int version;
  final bool isActive;
  final String? notes;
  const Recipe(
      {required this.id,
      required this.recipeCode,
      required this.recipeName,
      required this.finishedItemId,
      required this.baseQty,
      required this.baseUnit,
      required this.targetOverrun,
      required this.expectedYield,
      required this.version,
      required this.isActive,
      this.notes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['recipe_code'] = Variable<String>(recipeCode);
    map['recipe_name'] = Variable<String>(recipeName);
    map['finished_item_id'] = Variable<int>(finishedItemId);
    map['base_qty'] = Variable<double>(baseQty);
    map['base_unit'] = Variable<String>(baseUnit);
    map['target_overrun'] = Variable<double>(targetOverrun);
    map['expected_yield'] = Variable<double>(expectedYield);
    map['version'] = Variable<int>(version);
    map['is_active'] = Variable<bool>(isActive);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  RecipesCompanion toCompanion(bool nullToAbsent) {
    return RecipesCompanion(
      id: Value(id),
      recipeCode: Value(recipeCode),
      recipeName: Value(recipeName),
      finishedItemId: Value(finishedItemId),
      baseQty: Value(baseQty),
      baseUnit: Value(baseUnit),
      targetOverrun: Value(targetOverrun),
      expectedYield: Value(expectedYield),
      version: Value(version),
      isActive: Value(isActive),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
    );
  }

  factory Recipe.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Recipe(
      id: serializer.fromJson<int>(json['id']),
      recipeCode: serializer.fromJson<String>(json['recipeCode']),
      recipeName: serializer.fromJson<String>(json['recipeName']),
      finishedItemId: serializer.fromJson<int>(json['finishedItemId']),
      baseQty: serializer.fromJson<double>(json['baseQty']),
      baseUnit: serializer.fromJson<String>(json['baseUnit']),
      targetOverrun: serializer.fromJson<double>(json['targetOverrun']),
      expectedYield: serializer.fromJson<double>(json['expectedYield']),
      version: serializer.fromJson<int>(json['version']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recipeCode': serializer.toJson<String>(recipeCode),
      'recipeName': serializer.toJson<String>(recipeName),
      'finishedItemId': serializer.toJson<int>(finishedItemId),
      'baseQty': serializer.toJson<double>(baseQty),
      'baseUnit': serializer.toJson<String>(baseUnit),
      'targetOverrun': serializer.toJson<double>(targetOverrun),
      'expectedYield': serializer.toJson<double>(expectedYield),
      'version': serializer.toJson<int>(version),
      'isActive': serializer.toJson<bool>(isActive),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  Recipe copyWith(
          {int? id,
          String? recipeCode,
          String? recipeName,
          int? finishedItemId,
          double? baseQty,
          String? baseUnit,
          double? targetOverrun,
          double? expectedYield,
          int? version,
          bool? isActive,
          Value<String?> notes = const Value.absent()}) =>
      Recipe(
        id: id ?? this.id,
        recipeCode: recipeCode ?? this.recipeCode,
        recipeName: recipeName ?? this.recipeName,
        finishedItemId: finishedItemId ?? this.finishedItemId,
        baseQty: baseQty ?? this.baseQty,
        baseUnit: baseUnit ?? this.baseUnit,
        targetOverrun: targetOverrun ?? this.targetOverrun,
        expectedYield: expectedYield ?? this.expectedYield,
        version: version ?? this.version,
        isActive: isActive ?? this.isActive,
        notes: notes.present ? notes.value : this.notes,
      );
  Recipe copyWithCompanion(RecipesCompanion data) {
    return Recipe(
      id: data.id.present ? data.id.value : this.id,
      recipeCode:
          data.recipeCode.present ? data.recipeCode.value : this.recipeCode,
      recipeName:
          data.recipeName.present ? data.recipeName.value : this.recipeName,
      finishedItemId: data.finishedItemId.present
          ? data.finishedItemId.value
          : this.finishedItemId,
      baseQty: data.baseQty.present ? data.baseQty.value : this.baseQty,
      baseUnit: data.baseUnit.present ? data.baseUnit.value : this.baseUnit,
      targetOverrun: data.targetOverrun.present
          ? data.targetOverrun.value
          : this.targetOverrun,
      expectedYield: data.expectedYield.present
          ? data.expectedYield.value
          : this.expectedYield,
      version: data.version.present ? data.version.value : this.version,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Recipe(')
          ..write('id: $id, ')
          ..write('recipeCode: $recipeCode, ')
          ..write('recipeName: $recipeName, ')
          ..write('finishedItemId: $finishedItemId, ')
          ..write('baseQty: $baseQty, ')
          ..write('baseUnit: $baseUnit, ')
          ..write('targetOverrun: $targetOverrun, ')
          ..write('expectedYield: $expectedYield, ')
          ..write('version: $version, ')
          ..write('isActive: $isActive, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      recipeCode,
      recipeName,
      finishedItemId,
      baseQty,
      baseUnit,
      targetOverrun,
      expectedYield,
      version,
      isActive,
      notes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Recipe &&
          other.id == this.id &&
          other.recipeCode == this.recipeCode &&
          other.recipeName == this.recipeName &&
          other.finishedItemId == this.finishedItemId &&
          other.baseQty == this.baseQty &&
          other.baseUnit == this.baseUnit &&
          other.targetOverrun == this.targetOverrun &&
          other.expectedYield == this.expectedYield &&
          other.version == this.version &&
          other.isActive == this.isActive &&
          other.notes == this.notes);
}

class RecipesCompanion extends UpdateCompanion<Recipe> {
  final Value<int> id;
  final Value<String> recipeCode;
  final Value<String> recipeName;
  final Value<int> finishedItemId;
  final Value<double> baseQty;
  final Value<String> baseUnit;
  final Value<double> targetOverrun;
  final Value<double> expectedYield;
  final Value<int> version;
  final Value<bool> isActive;
  final Value<String?> notes;
  const RecipesCompanion({
    this.id = const Value.absent(),
    this.recipeCode = const Value.absent(),
    this.recipeName = const Value.absent(),
    this.finishedItemId = const Value.absent(),
    this.baseQty = const Value.absent(),
    this.baseUnit = const Value.absent(),
    this.targetOverrun = const Value.absent(),
    this.expectedYield = const Value.absent(),
    this.version = const Value.absent(),
    this.isActive = const Value.absent(),
    this.notes = const Value.absent(),
  });
  RecipesCompanion.insert({
    this.id = const Value.absent(),
    required String recipeCode,
    required String recipeName,
    required int finishedItemId,
    required double baseQty,
    required String baseUnit,
    this.targetOverrun = const Value.absent(),
    this.expectedYield = const Value.absent(),
    this.version = const Value.absent(),
    this.isActive = const Value.absent(),
    this.notes = const Value.absent(),
  })  : recipeCode = Value(recipeCode),
        recipeName = Value(recipeName),
        finishedItemId = Value(finishedItemId),
        baseQty = Value(baseQty),
        baseUnit = Value(baseUnit);
  static Insertable<Recipe> custom({
    Expression<int>? id,
    Expression<String>? recipeCode,
    Expression<String>? recipeName,
    Expression<int>? finishedItemId,
    Expression<double>? baseQty,
    Expression<String>? baseUnit,
    Expression<double>? targetOverrun,
    Expression<double>? expectedYield,
    Expression<int>? version,
    Expression<bool>? isActive,
    Expression<String>? notes,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recipeCode != null) 'recipe_code': recipeCode,
      if (recipeName != null) 'recipe_name': recipeName,
      if (finishedItemId != null) 'finished_item_id': finishedItemId,
      if (baseQty != null) 'base_qty': baseQty,
      if (baseUnit != null) 'base_unit': baseUnit,
      if (targetOverrun != null) 'target_overrun': targetOverrun,
      if (expectedYield != null) 'expected_yield': expectedYield,
      if (version != null) 'version': version,
      if (isActive != null) 'is_active': isActive,
      if (notes != null) 'notes': notes,
    });
  }

  RecipesCompanion copyWith(
      {Value<int>? id,
      Value<String>? recipeCode,
      Value<String>? recipeName,
      Value<int>? finishedItemId,
      Value<double>? baseQty,
      Value<String>? baseUnit,
      Value<double>? targetOverrun,
      Value<double>? expectedYield,
      Value<int>? version,
      Value<bool>? isActive,
      Value<String?>? notes}) {
    return RecipesCompanion(
      id: id ?? this.id,
      recipeCode: recipeCode ?? this.recipeCode,
      recipeName: recipeName ?? this.recipeName,
      finishedItemId: finishedItemId ?? this.finishedItemId,
      baseQty: baseQty ?? this.baseQty,
      baseUnit: baseUnit ?? this.baseUnit,
      targetOverrun: targetOverrun ?? this.targetOverrun,
      expectedYield: expectedYield ?? this.expectedYield,
      version: version ?? this.version,
      isActive: isActive ?? this.isActive,
      notes: notes ?? this.notes,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recipeCode.present) {
      map['recipe_code'] = Variable<String>(recipeCode.value);
    }
    if (recipeName.present) {
      map['recipe_name'] = Variable<String>(recipeName.value);
    }
    if (finishedItemId.present) {
      map['finished_item_id'] = Variable<int>(finishedItemId.value);
    }
    if (baseQty.present) {
      map['base_qty'] = Variable<double>(baseQty.value);
    }
    if (baseUnit.present) {
      map['base_unit'] = Variable<String>(baseUnit.value);
    }
    if (targetOverrun.present) {
      map['target_overrun'] = Variable<double>(targetOverrun.value);
    }
    if (expectedYield.present) {
      map['expected_yield'] = Variable<double>(expectedYield.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecipesCompanion(')
          ..write('id: $id, ')
          ..write('recipeCode: $recipeCode, ')
          ..write('recipeName: $recipeName, ')
          ..write('finishedItemId: $finishedItemId, ')
          ..write('baseQty: $baseQty, ')
          ..write('baseUnit: $baseUnit, ')
          ..write('targetOverrun: $targetOverrun, ')
          ..write('expectedYield: $expectedYield, ')
          ..write('version: $version, ')
          ..write('isActive: $isActive, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }
}

class $RecipeLinesTable extends RecipeLines
    with TableInfo<$RecipeLinesTable, RecipeLine> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecipeLinesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _recipeIdMeta =
      const VerificationMeta('recipeId');
  @override
  late final GeneratedColumn<int> recipeId = GeneratedColumn<int>(
      'recipe_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES recipes (id)'));
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES items (id)'));
  static const VerificationMeta _qtyMeta = const VerificationMeta('qty');
  @override
  late final GeneratedColumn<double> qty = GeneratedColumn<double>(
      'qty', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<String> unit = GeneratedColumn<String>(
      'unit', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _wastagePercentMeta =
      const VerificationMeta('wastagePercent');
  @override
  late final GeneratedColumn<double> wastagePercent = GeneratedColumn<double>(
      'wastage_percent', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _sequenceMeta =
      const VerificationMeta('sequence');
  @override
  late final GeneratedColumn<int> sequence = GeneratedColumn<int>(
      'sequence', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns =>
      [id, recipeId, itemId, qty, unit, wastagePercent, sequence];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'recipe_lines';
  @override
  VerificationContext validateIntegrity(Insertable<RecipeLine> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('recipe_id')) {
      context.handle(_recipeIdMeta,
          recipeId.isAcceptableOrUnknown(data['recipe_id']!, _recipeIdMeta));
    } else if (isInserting) {
      context.missing(_recipeIdMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('qty')) {
      context.handle(
          _qtyMeta, qty.isAcceptableOrUnknown(data['qty']!, _qtyMeta));
    } else if (isInserting) {
      context.missing(_qtyMeta);
    }
    if (data.containsKey('unit')) {
      context.handle(
          _unitMeta, unit.isAcceptableOrUnknown(data['unit']!, _unitMeta));
    } else if (isInserting) {
      context.missing(_unitMeta);
    }
    if (data.containsKey('wastage_percent')) {
      context.handle(
          _wastagePercentMeta,
          wastagePercent.isAcceptableOrUnknown(
              data['wastage_percent']!, _wastagePercentMeta));
    }
    if (data.containsKey('sequence')) {
      context.handle(_sequenceMeta,
          sequence.isAcceptableOrUnknown(data['sequence']!, _sequenceMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecipeLine map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecipeLine(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recipeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}recipe_id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
      qty: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}qty'])!,
      unit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}unit'])!,
      wastagePercent: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}wastage_percent'])!,
      sequence: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sequence'])!,
    );
  }

  @override
  $RecipeLinesTable createAlias(String alias) {
    return $RecipeLinesTable(attachedDatabase, alias);
  }
}

class RecipeLine extends DataClass implements Insertable<RecipeLine> {
  final int id;
  final int recipeId;
  final int itemId;
  final double qty;
  final String unit;
  final double wastagePercent;
  final int sequence;
  const RecipeLine(
      {required this.id,
      required this.recipeId,
      required this.itemId,
      required this.qty,
      required this.unit,
      required this.wastagePercent,
      required this.sequence});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['recipe_id'] = Variable<int>(recipeId);
    map['item_id'] = Variable<int>(itemId);
    map['qty'] = Variable<double>(qty);
    map['unit'] = Variable<String>(unit);
    map['wastage_percent'] = Variable<double>(wastagePercent);
    map['sequence'] = Variable<int>(sequence);
    return map;
  }

  RecipeLinesCompanion toCompanion(bool nullToAbsent) {
    return RecipeLinesCompanion(
      id: Value(id),
      recipeId: Value(recipeId),
      itemId: Value(itemId),
      qty: Value(qty),
      unit: Value(unit),
      wastagePercent: Value(wastagePercent),
      sequence: Value(sequence),
    );
  }

  factory RecipeLine.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecipeLine(
      id: serializer.fromJson<int>(json['id']),
      recipeId: serializer.fromJson<int>(json['recipeId']),
      itemId: serializer.fromJson<int>(json['itemId']),
      qty: serializer.fromJson<double>(json['qty']),
      unit: serializer.fromJson<String>(json['unit']),
      wastagePercent: serializer.fromJson<double>(json['wastagePercent']),
      sequence: serializer.fromJson<int>(json['sequence']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recipeId': serializer.toJson<int>(recipeId),
      'itemId': serializer.toJson<int>(itemId),
      'qty': serializer.toJson<double>(qty),
      'unit': serializer.toJson<String>(unit),
      'wastagePercent': serializer.toJson<double>(wastagePercent),
      'sequence': serializer.toJson<int>(sequence),
    };
  }

  RecipeLine copyWith(
          {int? id,
          int? recipeId,
          int? itemId,
          double? qty,
          String? unit,
          double? wastagePercent,
          int? sequence}) =>
      RecipeLine(
        id: id ?? this.id,
        recipeId: recipeId ?? this.recipeId,
        itemId: itemId ?? this.itemId,
        qty: qty ?? this.qty,
        unit: unit ?? this.unit,
        wastagePercent: wastagePercent ?? this.wastagePercent,
        sequence: sequence ?? this.sequence,
      );
  RecipeLine copyWithCompanion(RecipeLinesCompanion data) {
    return RecipeLine(
      id: data.id.present ? data.id.value : this.id,
      recipeId: data.recipeId.present ? data.recipeId.value : this.recipeId,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      qty: data.qty.present ? data.qty.value : this.qty,
      unit: data.unit.present ? data.unit.value : this.unit,
      wastagePercent: data.wastagePercent.present
          ? data.wastagePercent.value
          : this.wastagePercent,
      sequence: data.sequence.present ? data.sequence.value : this.sequence,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecipeLine(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('itemId: $itemId, ')
          ..write('qty: $qty, ')
          ..write('unit: $unit, ')
          ..write('wastagePercent: $wastagePercent, ')
          ..write('sequence: $sequence')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, recipeId, itemId, qty, unit, wastagePercent, sequence);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecipeLine &&
          other.id == this.id &&
          other.recipeId == this.recipeId &&
          other.itemId == this.itemId &&
          other.qty == this.qty &&
          other.unit == this.unit &&
          other.wastagePercent == this.wastagePercent &&
          other.sequence == this.sequence);
}

class RecipeLinesCompanion extends UpdateCompanion<RecipeLine> {
  final Value<int> id;
  final Value<int> recipeId;
  final Value<int> itemId;
  final Value<double> qty;
  final Value<String> unit;
  final Value<double> wastagePercent;
  final Value<int> sequence;
  const RecipeLinesCompanion({
    this.id = const Value.absent(),
    this.recipeId = const Value.absent(),
    this.itemId = const Value.absent(),
    this.qty = const Value.absent(),
    this.unit = const Value.absent(),
    this.wastagePercent = const Value.absent(),
    this.sequence = const Value.absent(),
  });
  RecipeLinesCompanion.insert({
    this.id = const Value.absent(),
    required int recipeId,
    required int itemId,
    required double qty,
    required String unit,
    this.wastagePercent = const Value.absent(),
    this.sequence = const Value.absent(),
  })  : recipeId = Value(recipeId),
        itemId = Value(itemId),
        qty = Value(qty),
        unit = Value(unit);
  static Insertable<RecipeLine> custom({
    Expression<int>? id,
    Expression<int>? recipeId,
    Expression<int>? itemId,
    Expression<double>? qty,
    Expression<String>? unit,
    Expression<double>? wastagePercent,
    Expression<int>? sequence,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recipeId != null) 'recipe_id': recipeId,
      if (itemId != null) 'item_id': itemId,
      if (qty != null) 'qty': qty,
      if (unit != null) 'unit': unit,
      if (wastagePercent != null) 'wastage_percent': wastagePercent,
      if (sequence != null) 'sequence': sequence,
    });
  }

  RecipeLinesCompanion copyWith(
      {Value<int>? id,
      Value<int>? recipeId,
      Value<int>? itemId,
      Value<double>? qty,
      Value<String>? unit,
      Value<double>? wastagePercent,
      Value<int>? sequence}) {
    return RecipeLinesCompanion(
      id: id ?? this.id,
      recipeId: recipeId ?? this.recipeId,
      itemId: itemId ?? this.itemId,
      qty: qty ?? this.qty,
      unit: unit ?? this.unit,
      wastagePercent: wastagePercent ?? this.wastagePercent,
      sequence: sequence ?? this.sequence,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recipeId.present) {
      map['recipe_id'] = Variable<int>(recipeId.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (qty.present) {
      map['qty'] = Variable<double>(qty.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    if (wastagePercent.present) {
      map['wastage_percent'] = Variable<double>(wastagePercent.value);
    }
    if (sequence.present) {
      map['sequence'] = Variable<int>(sequence.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecipeLinesCompanion(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('itemId: $itemId, ')
          ..write('qty: $qty, ')
          ..write('unit: $unit, ')
          ..write('wastagePercent: $wastagePercent, ')
          ..write('sequence: $sequence')
          ..write(')'))
        .toString();
  }
}

class $BatchesTable extends Batches with TableInfo<$BatchesTable, Batche> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BatchesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _batchNoMeta =
      const VerificationMeta('batchNo');
  @override
  late final GeneratedColumn<String> batchNo = GeneratedColumn<String>(
      'batch_no', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES items (id)'));
  static const VerificationMeta _warehouseIdMeta =
      const VerificationMeta('warehouseId');
  @override
  late final GeneratedColumn<int> warehouseId = GeneratedColumn<int>(
      'warehouse_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES warehouses (id)'));
  static const VerificationMeta _mfgDateMeta =
      const VerificationMeta('mfgDate');
  @override
  late final GeneratedColumn<DateTime> mfgDate = GeneratedColumn<DateTime>(
      'mfg_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _expiryDateMeta =
      const VerificationMeta('expiryDate');
  @override
  late final GeneratedColumn<DateTime> expiryDate = GeneratedColumn<DateTime>(
      'expiry_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _initialQtyMeta =
      const VerificationMeta('initialQty');
  @override
  late final GeneratedColumn<double> initialQty = GeneratedColumn<double>(
      'initial_qty', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _currentQtyMeta =
      const VerificationMeta('currentQty');
  @override
  late final GeneratedColumn<double> currentQty = GeneratedColumn<double>(
      'current_qty', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _unitCostMeta =
      const VerificationMeta('unitCost');
  @override
  late final GeneratedColumn<double> unitCost = GeneratedColumn<double>(
      'unit_cost', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('Available'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        batchNo,
        itemId,
        warehouseId,
        mfgDate,
        expiryDate,
        initialQty,
        currentQty,
        unitCost,
        status
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'batches';
  @override
  VerificationContext validateIntegrity(Insertable<Batche> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('batch_no')) {
      context.handle(_batchNoMeta,
          batchNo.isAcceptableOrUnknown(data['batch_no']!, _batchNoMeta));
    } else if (isInserting) {
      context.missing(_batchNoMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('warehouse_id')) {
      context.handle(
          _warehouseIdMeta,
          warehouseId.isAcceptableOrUnknown(
              data['warehouse_id']!, _warehouseIdMeta));
    }
    if (data.containsKey('mfg_date')) {
      context.handle(_mfgDateMeta,
          mfgDate.isAcceptableOrUnknown(data['mfg_date']!, _mfgDateMeta));
    }
    if (data.containsKey('expiry_date')) {
      context.handle(
          _expiryDateMeta,
          expiryDate.isAcceptableOrUnknown(
              data['expiry_date']!, _expiryDateMeta));
    }
    if (data.containsKey('initial_qty')) {
      context.handle(
          _initialQtyMeta,
          initialQty.isAcceptableOrUnknown(
              data['initial_qty']!, _initialQtyMeta));
    } else if (isInserting) {
      context.missing(_initialQtyMeta);
    }
    if (data.containsKey('current_qty')) {
      context.handle(
          _currentQtyMeta,
          currentQty.isAcceptableOrUnknown(
              data['current_qty']!, _currentQtyMeta));
    } else if (isInserting) {
      context.missing(_currentQtyMeta);
    }
    if (data.containsKey('unit_cost')) {
      context.handle(_unitCostMeta,
          unitCost.isAcceptableOrUnknown(data['unit_cost']!, _unitCostMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Batche map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Batche(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      batchNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}batch_no'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
      warehouseId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}warehouse_id']),
      mfgDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}mfg_date']),
      expiryDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expiry_date']),
      initialQty: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}initial_qty'])!,
      currentQty: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}current_qty'])!,
      unitCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}unit_cost'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
    );
  }

  @override
  $BatchesTable createAlias(String alias) {
    return $BatchesTable(attachedDatabase, alias);
  }
}

class Batche extends DataClass implements Insertable<Batche> {
  final int id;
  final String batchNo;
  final int itemId;
  final int? warehouseId;
  final DateTime? mfgDate;
  final DateTime? expiryDate;
  final double initialQty;
  final double currentQty;
  final double unitCost;
  final String status;
  const Batche(
      {required this.id,
      required this.batchNo,
      required this.itemId,
      this.warehouseId,
      this.mfgDate,
      this.expiryDate,
      required this.initialQty,
      required this.currentQty,
      required this.unitCost,
      required this.status});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['batch_no'] = Variable<String>(batchNo);
    map['item_id'] = Variable<int>(itemId);
    if (!nullToAbsent || warehouseId != null) {
      map['warehouse_id'] = Variable<int>(warehouseId);
    }
    if (!nullToAbsent || mfgDate != null) {
      map['mfg_date'] = Variable<DateTime>(mfgDate);
    }
    if (!nullToAbsent || expiryDate != null) {
      map['expiry_date'] = Variable<DateTime>(expiryDate);
    }
    map['initial_qty'] = Variable<double>(initialQty);
    map['current_qty'] = Variable<double>(currentQty);
    map['unit_cost'] = Variable<double>(unitCost);
    map['status'] = Variable<String>(status);
    return map;
  }

  BatchesCompanion toCompanion(bool nullToAbsent) {
    return BatchesCompanion(
      id: Value(id),
      batchNo: Value(batchNo),
      itemId: Value(itemId),
      warehouseId: warehouseId == null && nullToAbsent
          ? const Value.absent()
          : Value(warehouseId),
      mfgDate: mfgDate == null && nullToAbsent
          ? const Value.absent()
          : Value(mfgDate),
      expiryDate: expiryDate == null && nullToAbsent
          ? const Value.absent()
          : Value(expiryDate),
      initialQty: Value(initialQty),
      currentQty: Value(currentQty),
      unitCost: Value(unitCost),
      status: Value(status),
    );
  }

  factory Batche.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Batche(
      id: serializer.fromJson<int>(json['id']),
      batchNo: serializer.fromJson<String>(json['batchNo']),
      itemId: serializer.fromJson<int>(json['itemId']),
      warehouseId: serializer.fromJson<int?>(json['warehouseId']),
      mfgDate: serializer.fromJson<DateTime?>(json['mfgDate']),
      expiryDate: serializer.fromJson<DateTime?>(json['expiryDate']),
      initialQty: serializer.fromJson<double>(json['initialQty']),
      currentQty: serializer.fromJson<double>(json['currentQty']),
      unitCost: serializer.fromJson<double>(json['unitCost']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'batchNo': serializer.toJson<String>(batchNo),
      'itemId': serializer.toJson<int>(itemId),
      'warehouseId': serializer.toJson<int?>(warehouseId),
      'mfgDate': serializer.toJson<DateTime?>(mfgDate),
      'expiryDate': serializer.toJson<DateTime?>(expiryDate),
      'initialQty': serializer.toJson<double>(initialQty),
      'currentQty': serializer.toJson<double>(currentQty),
      'unitCost': serializer.toJson<double>(unitCost),
      'status': serializer.toJson<String>(status),
    };
  }

  Batche copyWith(
          {int? id,
          String? batchNo,
          int? itemId,
          Value<int?> warehouseId = const Value.absent(),
          Value<DateTime?> mfgDate = const Value.absent(),
          Value<DateTime?> expiryDate = const Value.absent(),
          double? initialQty,
          double? currentQty,
          double? unitCost,
          String? status}) =>
      Batche(
        id: id ?? this.id,
        batchNo: batchNo ?? this.batchNo,
        itemId: itemId ?? this.itemId,
        warehouseId: warehouseId.present ? warehouseId.value : this.warehouseId,
        mfgDate: mfgDate.present ? mfgDate.value : this.mfgDate,
        expiryDate: expiryDate.present ? expiryDate.value : this.expiryDate,
        initialQty: initialQty ?? this.initialQty,
        currentQty: currentQty ?? this.currentQty,
        unitCost: unitCost ?? this.unitCost,
        status: status ?? this.status,
      );
  Batche copyWithCompanion(BatchesCompanion data) {
    return Batche(
      id: data.id.present ? data.id.value : this.id,
      batchNo: data.batchNo.present ? data.batchNo.value : this.batchNo,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      warehouseId:
          data.warehouseId.present ? data.warehouseId.value : this.warehouseId,
      mfgDate: data.mfgDate.present ? data.mfgDate.value : this.mfgDate,
      expiryDate:
          data.expiryDate.present ? data.expiryDate.value : this.expiryDate,
      initialQty:
          data.initialQty.present ? data.initialQty.value : this.initialQty,
      currentQty:
          data.currentQty.present ? data.currentQty.value : this.currentQty,
      unitCost: data.unitCost.present ? data.unitCost.value : this.unitCost,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Batche(')
          ..write('id: $id, ')
          ..write('batchNo: $batchNo, ')
          ..write('itemId: $itemId, ')
          ..write('warehouseId: $warehouseId, ')
          ..write('mfgDate: $mfgDate, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('initialQty: $initialQty, ')
          ..write('currentQty: $currentQty, ')
          ..write('unitCost: $unitCost, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, batchNo, itemId, warehouseId, mfgDate,
      expiryDate, initialQty, currentQty, unitCost, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Batche &&
          other.id == this.id &&
          other.batchNo == this.batchNo &&
          other.itemId == this.itemId &&
          other.warehouseId == this.warehouseId &&
          other.mfgDate == this.mfgDate &&
          other.expiryDate == this.expiryDate &&
          other.initialQty == this.initialQty &&
          other.currentQty == this.currentQty &&
          other.unitCost == this.unitCost &&
          other.status == this.status);
}

class BatchesCompanion extends UpdateCompanion<Batche> {
  final Value<int> id;
  final Value<String> batchNo;
  final Value<int> itemId;
  final Value<int?> warehouseId;
  final Value<DateTime?> mfgDate;
  final Value<DateTime?> expiryDate;
  final Value<double> initialQty;
  final Value<double> currentQty;
  final Value<double> unitCost;
  final Value<String> status;
  const BatchesCompanion({
    this.id = const Value.absent(),
    this.batchNo = const Value.absent(),
    this.itemId = const Value.absent(),
    this.warehouseId = const Value.absent(),
    this.mfgDate = const Value.absent(),
    this.expiryDate = const Value.absent(),
    this.initialQty = const Value.absent(),
    this.currentQty = const Value.absent(),
    this.unitCost = const Value.absent(),
    this.status = const Value.absent(),
  });
  BatchesCompanion.insert({
    this.id = const Value.absent(),
    required String batchNo,
    required int itemId,
    this.warehouseId = const Value.absent(),
    this.mfgDate = const Value.absent(),
    this.expiryDate = const Value.absent(),
    required double initialQty,
    required double currentQty,
    this.unitCost = const Value.absent(),
    this.status = const Value.absent(),
  })  : batchNo = Value(batchNo),
        itemId = Value(itemId),
        initialQty = Value(initialQty),
        currentQty = Value(currentQty);
  static Insertable<Batche> custom({
    Expression<int>? id,
    Expression<String>? batchNo,
    Expression<int>? itemId,
    Expression<int>? warehouseId,
    Expression<DateTime>? mfgDate,
    Expression<DateTime>? expiryDate,
    Expression<double>? initialQty,
    Expression<double>? currentQty,
    Expression<double>? unitCost,
    Expression<String>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (batchNo != null) 'batch_no': batchNo,
      if (itemId != null) 'item_id': itemId,
      if (warehouseId != null) 'warehouse_id': warehouseId,
      if (mfgDate != null) 'mfg_date': mfgDate,
      if (expiryDate != null) 'expiry_date': expiryDate,
      if (initialQty != null) 'initial_qty': initialQty,
      if (currentQty != null) 'current_qty': currentQty,
      if (unitCost != null) 'unit_cost': unitCost,
      if (status != null) 'status': status,
    });
  }

  BatchesCompanion copyWith(
      {Value<int>? id,
      Value<String>? batchNo,
      Value<int>? itemId,
      Value<int?>? warehouseId,
      Value<DateTime?>? mfgDate,
      Value<DateTime?>? expiryDate,
      Value<double>? initialQty,
      Value<double>? currentQty,
      Value<double>? unitCost,
      Value<String>? status}) {
    return BatchesCompanion(
      id: id ?? this.id,
      batchNo: batchNo ?? this.batchNo,
      itemId: itemId ?? this.itemId,
      warehouseId: warehouseId ?? this.warehouseId,
      mfgDate: mfgDate ?? this.mfgDate,
      expiryDate: expiryDate ?? this.expiryDate,
      initialQty: initialQty ?? this.initialQty,
      currentQty: currentQty ?? this.currentQty,
      unitCost: unitCost ?? this.unitCost,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (batchNo.present) {
      map['batch_no'] = Variable<String>(batchNo.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (warehouseId.present) {
      map['warehouse_id'] = Variable<int>(warehouseId.value);
    }
    if (mfgDate.present) {
      map['mfg_date'] = Variable<DateTime>(mfgDate.value);
    }
    if (expiryDate.present) {
      map['expiry_date'] = Variable<DateTime>(expiryDate.value);
    }
    if (initialQty.present) {
      map['initial_qty'] = Variable<double>(initialQty.value);
    }
    if (currentQty.present) {
      map['current_qty'] = Variable<double>(currentQty.value);
    }
    if (unitCost.present) {
      map['unit_cost'] = Variable<double>(unitCost.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BatchesCompanion(')
          ..write('id: $id, ')
          ..write('batchNo: $batchNo, ')
          ..write('itemId: $itemId, ')
          ..write('warehouseId: $warehouseId, ')
          ..write('mfgDate: $mfgDate, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('initialQty: $initialQty, ')
          ..write('currentQty: $currentQty, ')
          ..write('unitCost: $unitCost, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

class $StockLedgerTable extends StockLedger
    with TableInfo<$StockLedgerTable, StockLedgerData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StockLedgerTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _voucherIdMeta =
      const VerificationMeta('voucherId');
  @override
  late final GeneratedColumn<int> voucherId = GeneratedColumn<int>(
      'voucher_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _voucherTypeMeta =
      const VerificationMeta('voucherType');
  @override
  late final GeneratedColumn<String> voucherType = GeneratedColumn<String>(
      'voucher_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES items (id)'));
  static const VerificationMeta _batchIdMeta =
      const VerificationMeta('batchId');
  @override
  late final GeneratedColumn<int> batchId = GeneratedColumn<int>(
      'batch_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES batches (id)'));
  static const VerificationMeta _warehouseIdMeta =
      const VerificationMeta('warehouseId');
  @override
  late final GeneratedColumn<int> warehouseId = GeneratedColumn<int>(
      'warehouse_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES warehouses (id)'));
  static const VerificationMeta _tankIdMeta = const VerificationMeta('tankId');
  @override
  late final GeneratedColumn<int> tankId = GeneratedColumn<int>(
      'tank_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES tanks (id)'));
  static const VerificationMeta _qtyInMeta = const VerificationMeta('qtyIn');
  @override
  late final GeneratedColumn<double> qtyIn = GeneratedColumn<double>(
      'qty_in', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _qtyOutMeta = const VerificationMeta('qtyOut');
  @override
  late final GeneratedColumn<double> qtyOut = GeneratedColumn<double>(
      'qty_out', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _unitCostMeta =
      const VerificationMeta('unitCost');
  @override
  late final GeneratedColumn<double> unitCost = GeneratedColumn<double>(
      'unit_cost', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _transactionDateMeta =
      const VerificationMeta('transactionDate');
  @override
  late final GeneratedColumn<DateTime> transactionDate =
      GeneratedColumn<DateTime>('transaction_date', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _narrationMeta =
      const VerificationMeta('narration');
  @override
  late final GeneratedColumn<String> narration = GeneratedColumn<String>(
      'narration', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        voucherId,
        voucherType,
        itemId,
        batchId,
        warehouseId,
        tankId,
        qtyIn,
        qtyOut,
        unitCost,
        transactionDate,
        narration,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stock_ledger';
  @override
  VerificationContext validateIntegrity(Insertable<StockLedgerData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('voucher_id')) {
      context.handle(_voucherIdMeta,
          voucherId.isAcceptableOrUnknown(data['voucher_id']!, _voucherIdMeta));
    }
    if (data.containsKey('voucher_type')) {
      context.handle(
          _voucherTypeMeta,
          voucherType.isAcceptableOrUnknown(
              data['voucher_type']!, _voucherTypeMeta));
    } else if (isInserting) {
      context.missing(_voucherTypeMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('batch_id')) {
      context.handle(_batchIdMeta,
          batchId.isAcceptableOrUnknown(data['batch_id']!, _batchIdMeta));
    }
    if (data.containsKey('warehouse_id')) {
      context.handle(
          _warehouseIdMeta,
          warehouseId.isAcceptableOrUnknown(
              data['warehouse_id']!, _warehouseIdMeta));
    }
    if (data.containsKey('tank_id')) {
      context.handle(_tankIdMeta,
          tankId.isAcceptableOrUnknown(data['tank_id']!, _tankIdMeta));
    }
    if (data.containsKey('qty_in')) {
      context.handle(
          _qtyInMeta, qtyIn.isAcceptableOrUnknown(data['qty_in']!, _qtyInMeta));
    }
    if (data.containsKey('qty_out')) {
      context.handle(_qtyOutMeta,
          qtyOut.isAcceptableOrUnknown(data['qty_out']!, _qtyOutMeta));
    }
    if (data.containsKey('unit_cost')) {
      context.handle(_unitCostMeta,
          unitCost.isAcceptableOrUnknown(data['unit_cost']!, _unitCostMeta));
    }
    if (data.containsKey('transaction_date')) {
      context.handle(
          _transactionDateMeta,
          transactionDate.isAcceptableOrUnknown(
              data['transaction_date']!, _transactionDateMeta));
    } else if (isInserting) {
      context.missing(_transactionDateMeta);
    }
    if (data.containsKey('narration')) {
      context.handle(_narrationMeta,
          narration.isAcceptableOrUnknown(data['narration']!, _narrationMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StockLedgerData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StockLedgerData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      voucherId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}voucher_id']),
      voucherType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}voucher_type'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
      batchId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}batch_id']),
      warehouseId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}warehouse_id']),
      tankId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tank_id']),
      qtyIn: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}qty_in'])!,
      qtyOut: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}qty_out'])!,
      unitCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}unit_cost']),
      transactionDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}transaction_date'])!,
      narration: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}narration']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $StockLedgerTable createAlias(String alias) {
    return $StockLedgerTable(attachedDatabase, alias);
  }
}

class StockLedgerData extends DataClass implements Insertable<StockLedgerData> {
  final int id;
  final int? voucherId;
  final String voucherType;
  final int itemId;
  final int? batchId;
  final int? warehouseId;
  final int? tankId;
  final double qtyIn;
  final double qtyOut;
  final double? unitCost;
  final DateTime transactionDate;
  final String? narration;
  final DateTime createdAt;
  const StockLedgerData(
      {required this.id,
      this.voucherId,
      required this.voucherType,
      required this.itemId,
      this.batchId,
      this.warehouseId,
      this.tankId,
      required this.qtyIn,
      required this.qtyOut,
      this.unitCost,
      required this.transactionDate,
      this.narration,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || voucherId != null) {
      map['voucher_id'] = Variable<int>(voucherId);
    }
    map['voucher_type'] = Variable<String>(voucherType);
    map['item_id'] = Variable<int>(itemId);
    if (!nullToAbsent || batchId != null) {
      map['batch_id'] = Variable<int>(batchId);
    }
    if (!nullToAbsent || warehouseId != null) {
      map['warehouse_id'] = Variable<int>(warehouseId);
    }
    if (!nullToAbsent || tankId != null) {
      map['tank_id'] = Variable<int>(tankId);
    }
    map['qty_in'] = Variable<double>(qtyIn);
    map['qty_out'] = Variable<double>(qtyOut);
    if (!nullToAbsent || unitCost != null) {
      map['unit_cost'] = Variable<double>(unitCost);
    }
    map['transaction_date'] = Variable<DateTime>(transactionDate);
    if (!nullToAbsent || narration != null) {
      map['narration'] = Variable<String>(narration);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  StockLedgerCompanion toCompanion(bool nullToAbsent) {
    return StockLedgerCompanion(
      id: Value(id),
      voucherId: voucherId == null && nullToAbsent
          ? const Value.absent()
          : Value(voucherId),
      voucherType: Value(voucherType),
      itemId: Value(itemId),
      batchId: batchId == null && nullToAbsent
          ? const Value.absent()
          : Value(batchId),
      warehouseId: warehouseId == null && nullToAbsent
          ? const Value.absent()
          : Value(warehouseId),
      tankId:
          tankId == null && nullToAbsent ? const Value.absent() : Value(tankId),
      qtyIn: Value(qtyIn),
      qtyOut: Value(qtyOut),
      unitCost: unitCost == null && nullToAbsent
          ? const Value.absent()
          : Value(unitCost),
      transactionDate: Value(transactionDate),
      narration: narration == null && nullToAbsent
          ? const Value.absent()
          : Value(narration),
      createdAt: Value(createdAt),
    );
  }

  factory StockLedgerData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StockLedgerData(
      id: serializer.fromJson<int>(json['id']),
      voucherId: serializer.fromJson<int?>(json['voucherId']),
      voucherType: serializer.fromJson<String>(json['voucherType']),
      itemId: serializer.fromJson<int>(json['itemId']),
      batchId: serializer.fromJson<int?>(json['batchId']),
      warehouseId: serializer.fromJson<int?>(json['warehouseId']),
      tankId: serializer.fromJson<int?>(json['tankId']),
      qtyIn: serializer.fromJson<double>(json['qtyIn']),
      qtyOut: serializer.fromJson<double>(json['qtyOut']),
      unitCost: serializer.fromJson<double?>(json['unitCost']),
      transactionDate: serializer.fromJson<DateTime>(json['transactionDate']),
      narration: serializer.fromJson<String?>(json['narration']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'voucherId': serializer.toJson<int?>(voucherId),
      'voucherType': serializer.toJson<String>(voucherType),
      'itemId': serializer.toJson<int>(itemId),
      'batchId': serializer.toJson<int?>(batchId),
      'warehouseId': serializer.toJson<int?>(warehouseId),
      'tankId': serializer.toJson<int?>(tankId),
      'qtyIn': serializer.toJson<double>(qtyIn),
      'qtyOut': serializer.toJson<double>(qtyOut),
      'unitCost': serializer.toJson<double?>(unitCost),
      'transactionDate': serializer.toJson<DateTime>(transactionDate),
      'narration': serializer.toJson<String?>(narration),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  StockLedgerData copyWith(
          {int? id,
          Value<int?> voucherId = const Value.absent(),
          String? voucherType,
          int? itemId,
          Value<int?> batchId = const Value.absent(),
          Value<int?> warehouseId = const Value.absent(),
          Value<int?> tankId = const Value.absent(),
          double? qtyIn,
          double? qtyOut,
          Value<double?> unitCost = const Value.absent(),
          DateTime? transactionDate,
          Value<String?> narration = const Value.absent(),
          DateTime? createdAt}) =>
      StockLedgerData(
        id: id ?? this.id,
        voucherId: voucherId.present ? voucherId.value : this.voucherId,
        voucherType: voucherType ?? this.voucherType,
        itemId: itemId ?? this.itemId,
        batchId: batchId.present ? batchId.value : this.batchId,
        warehouseId: warehouseId.present ? warehouseId.value : this.warehouseId,
        tankId: tankId.present ? tankId.value : this.tankId,
        qtyIn: qtyIn ?? this.qtyIn,
        qtyOut: qtyOut ?? this.qtyOut,
        unitCost: unitCost.present ? unitCost.value : this.unitCost,
        transactionDate: transactionDate ?? this.transactionDate,
        narration: narration.present ? narration.value : this.narration,
        createdAt: createdAt ?? this.createdAt,
      );
  StockLedgerData copyWithCompanion(StockLedgerCompanion data) {
    return StockLedgerData(
      id: data.id.present ? data.id.value : this.id,
      voucherId: data.voucherId.present ? data.voucherId.value : this.voucherId,
      voucherType:
          data.voucherType.present ? data.voucherType.value : this.voucherType,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      batchId: data.batchId.present ? data.batchId.value : this.batchId,
      warehouseId:
          data.warehouseId.present ? data.warehouseId.value : this.warehouseId,
      tankId: data.tankId.present ? data.tankId.value : this.tankId,
      qtyIn: data.qtyIn.present ? data.qtyIn.value : this.qtyIn,
      qtyOut: data.qtyOut.present ? data.qtyOut.value : this.qtyOut,
      unitCost: data.unitCost.present ? data.unitCost.value : this.unitCost,
      transactionDate: data.transactionDate.present
          ? data.transactionDate.value
          : this.transactionDate,
      narration: data.narration.present ? data.narration.value : this.narration,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StockLedgerData(')
          ..write('id: $id, ')
          ..write('voucherId: $voucherId, ')
          ..write('voucherType: $voucherType, ')
          ..write('itemId: $itemId, ')
          ..write('batchId: $batchId, ')
          ..write('warehouseId: $warehouseId, ')
          ..write('tankId: $tankId, ')
          ..write('qtyIn: $qtyIn, ')
          ..write('qtyOut: $qtyOut, ')
          ..write('unitCost: $unitCost, ')
          ..write('transactionDate: $transactionDate, ')
          ..write('narration: $narration, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      voucherId,
      voucherType,
      itemId,
      batchId,
      warehouseId,
      tankId,
      qtyIn,
      qtyOut,
      unitCost,
      transactionDate,
      narration,
      createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StockLedgerData &&
          other.id == this.id &&
          other.voucherId == this.voucherId &&
          other.voucherType == this.voucherType &&
          other.itemId == this.itemId &&
          other.batchId == this.batchId &&
          other.warehouseId == this.warehouseId &&
          other.tankId == this.tankId &&
          other.qtyIn == this.qtyIn &&
          other.qtyOut == this.qtyOut &&
          other.unitCost == this.unitCost &&
          other.transactionDate == this.transactionDate &&
          other.narration == this.narration &&
          other.createdAt == this.createdAt);
}

class StockLedgerCompanion extends UpdateCompanion<StockLedgerData> {
  final Value<int> id;
  final Value<int?> voucherId;
  final Value<String> voucherType;
  final Value<int> itemId;
  final Value<int?> batchId;
  final Value<int?> warehouseId;
  final Value<int?> tankId;
  final Value<double> qtyIn;
  final Value<double> qtyOut;
  final Value<double?> unitCost;
  final Value<DateTime> transactionDate;
  final Value<String?> narration;
  final Value<DateTime> createdAt;
  const StockLedgerCompanion({
    this.id = const Value.absent(),
    this.voucherId = const Value.absent(),
    this.voucherType = const Value.absent(),
    this.itemId = const Value.absent(),
    this.batchId = const Value.absent(),
    this.warehouseId = const Value.absent(),
    this.tankId = const Value.absent(),
    this.qtyIn = const Value.absent(),
    this.qtyOut = const Value.absent(),
    this.unitCost = const Value.absent(),
    this.transactionDate = const Value.absent(),
    this.narration = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  StockLedgerCompanion.insert({
    this.id = const Value.absent(),
    this.voucherId = const Value.absent(),
    required String voucherType,
    required int itemId,
    this.batchId = const Value.absent(),
    this.warehouseId = const Value.absent(),
    this.tankId = const Value.absent(),
    this.qtyIn = const Value.absent(),
    this.qtyOut = const Value.absent(),
    this.unitCost = const Value.absent(),
    required DateTime transactionDate,
    this.narration = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : voucherType = Value(voucherType),
        itemId = Value(itemId),
        transactionDate = Value(transactionDate);
  static Insertable<StockLedgerData> custom({
    Expression<int>? id,
    Expression<int>? voucherId,
    Expression<String>? voucherType,
    Expression<int>? itemId,
    Expression<int>? batchId,
    Expression<int>? warehouseId,
    Expression<int>? tankId,
    Expression<double>? qtyIn,
    Expression<double>? qtyOut,
    Expression<double>? unitCost,
    Expression<DateTime>? transactionDate,
    Expression<String>? narration,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (voucherId != null) 'voucher_id': voucherId,
      if (voucherType != null) 'voucher_type': voucherType,
      if (itemId != null) 'item_id': itemId,
      if (batchId != null) 'batch_id': batchId,
      if (warehouseId != null) 'warehouse_id': warehouseId,
      if (tankId != null) 'tank_id': tankId,
      if (qtyIn != null) 'qty_in': qtyIn,
      if (qtyOut != null) 'qty_out': qtyOut,
      if (unitCost != null) 'unit_cost': unitCost,
      if (transactionDate != null) 'transaction_date': transactionDate,
      if (narration != null) 'narration': narration,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  StockLedgerCompanion copyWith(
      {Value<int>? id,
      Value<int?>? voucherId,
      Value<String>? voucherType,
      Value<int>? itemId,
      Value<int?>? batchId,
      Value<int?>? warehouseId,
      Value<int?>? tankId,
      Value<double>? qtyIn,
      Value<double>? qtyOut,
      Value<double?>? unitCost,
      Value<DateTime>? transactionDate,
      Value<String?>? narration,
      Value<DateTime>? createdAt}) {
    return StockLedgerCompanion(
      id: id ?? this.id,
      voucherId: voucherId ?? this.voucherId,
      voucherType: voucherType ?? this.voucherType,
      itemId: itemId ?? this.itemId,
      batchId: batchId ?? this.batchId,
      warehouseId: warehouseId ?? this.warehouseId,
      tankId: tankId ?? this.tankId,
      qtyIn: qtyIn ?? this.qtyIn,
      qtyOut: qtyOut ?? this.qtyOut,
      unitCost: unitCost ?? this.unitCost,
      transactionDate: transactionDate ?? this.transactionDate,
      narration: narration ?? this.narration,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (voucherId.present) {
      map['voucher_id'] = Variable<int>(voucherId.value);
    }
    if (voucherType.present) {
      map['voucher_type'] = Variable<String>(voucherType.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (batchId.present) {
      map['batch_id'] = Variable<int>(batchId.value);
    }
    if (warehouseId.present) {
      map['warehouse_id'] = Variable<int>(warehouseId.value);
    }
    if (tankId.present) {
      map['tank_id'] = Variable<int>(tankId.value);
    }
    if (qtyIn.present) {
      map['qty_in'] = Variable<double>(qtyIn.value);
    }
    if (qtyOut.present) {
      map['qty_out'] = Variable<double>(qtyOut.value);
    }
    if (unitCost.present) {
      map['unit_cost'] = Variable<double>(unitCost.value);
    }
    if (transactionDate.present) {
      map['transaction_date'] = Variable<DateTime>(transactionDate.value);
    }
    if (narration.present) {
      map['narration'] = Variable<String>(narration.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StockLedgerCompanion(')
          ..write('id: $id, ')
          ..write('voucherId: $voucherId, ')
          ..write('voucherType: $voucherType, ')
          ..write('itemId: $itemId, ')
          ..write('batchId: $batchId, ')
          ..write('warehouseId: $warehouseId, ')
          ..write('tankId: $tankId, ')
          ..write('qtyIn: $qtyIn, ')
          ..write('qtyOut: $qtyOut, ')
          ..write('unitCost: $unitCost, ')
          ..write('transactionDate: $transactionDate, ')
          ..write('narration: $narration, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $ProductionOrdersTable extends ProductionOrders
    with TableInfo<$ProductionOrdersTable, ProductionOrder> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductionOrdersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _orderNoMeta =
      const VerificationMeta('orderNo');
  @override
  late final GeneratedColumn<String> orderNo = GeneratedColumn<String>(
      'order_no', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _recipeIdMeta =
      const VerificationMeta('recipeId');
  @override
  late final GeneratedColumn<int> recipeId = GeneratedColumn<int>(
      'recipe_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES recipes (id)'));
  static const VerificationMeta _targetQtyMeta =
      const VerificationMeta('targetQty');
  @override
  late final GeneratedColumn<double> targetQty = GeneratedColumn<double>(
      'target_qty', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _targetUnitMeta =
      const VerificationMeta('targetUnit');
  @override
  late final GeneratedColumn<String> targetUnit = GeneratedColumn<String>(
      'target_unit', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _plannedOverrunMeta =
      const VerificationMeta('plannedOverrun');
  @override
  late final GeneratedColumn<double> plannedOverrun = GeneratedColumn<double>(
      'planned_overrun', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('Planned'));
  static const VerificationMeta _mixingTankIdMeta =
      const VerificationMeta('mixingTankId');
  @override
  late final GeneratedColumn<int> mixingTankId = GeneratedColumn<int>(
      'mixing_tank_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES tanks (id)'));
  static const VerificationMeta _agingTankIdMeta =
      const VerificationMeta('agingTankId');
  @override
  late final GeneratedColumn<int> agingTankId = GeneratedColumn<int>(
      'aging_tank_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES tanks (id)'));
  static const VerificationMeta _startDateMeta =
      const VerificationMeta('startDate');
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
      'start_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _endDateMeta =
      const VerificationMeta('endDate');
  @override
  late final GeneratedColumn<DateTime> endDate = GeneratedColumn<DateTime>(
      'end_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _actualMixQtyMeta =
      const VerificationMeta('actualMixQty');
  @override
  late final GeneratedColumn<double> actualMixQty = GeneratedColumn<double>(
      'actual_mix_qty', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _actualFinishedQtyMeta =
      const VerificationMeta('actualFinishedQty');
  @override
  late final GeneratedColumn<double> actualFinishedQty =
      GeneratedColumn<double>('actual_finished_qty', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _actualOverrunMeta =
      const VerificationMeta('actualOverrun');
  @override
  late final GeneratedColumn<double> actualOverrun = GeneratedColumn<double>(
      'actual_overrun', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _actualYieldMeta =
      const VerificationMeta('actualYield');
  @override
  late final GeneratedColumn<double> actualYield = GeneratedColumn<double>(
      'actual_yield', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _totalMaterialCostMeta =
      const VerificationMeta('totalMaterialCost');
  @override
  late final GeneratedColumn<double> totalMaterialCost =
      GeneratedColumn<double>('total_material_cost', aliasedName, false,
          type: DriftSqlType.double,
          requiredDuringInsert: false,
          defaultValue: const Constant(0.0));
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        orderNo,
        recipeId,
        targetQty,
        targetUnit,
        plannedOverrun,
        status,
        mixingTankId,
        agingTankId,
        startDate,
        endDate,
        actualMixQty,
        actualFinishedQty,
        actualOverrun,
        actualYield,
        totalMaterialCost,
        notes,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'production_orders';
  @override
  VerificationContext validateIntegrity(Insertable<ProductionOrder> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('order_no')) {
      context.handle(_orderNoMeta,
          orderNo.isAcceptableOrUnknown(data['order_no']!, _orderNoMeta));
    } else if (isInserting) {
      context.missing(_orderNoMeta);
    }
    if (data.containsKey('recipe_id')) {
      context.handle(_recipeIdMeta,
          recipeId.isAcceptableOrUnknown(data['recipe_id']!, _recipeIdMeta));
    } else if (isInserting) {
      context.missing(_recipeIdMeta);
    }
    if (data.containsKey('target_qty')) {
      context.handle(_targetQtyMeta,
          targetQty.isAcceptableOrUnknown(data['target_qty']!, _targetQtyMeta));
    } else if (isInserting) {
      context.missing(_targetQtyMeta);
    }
    if (data.containsKey('target_unit')) {
      context.handle(
          _targetUnitMeta,
          targetUnit.isAcceptableOrUnknown(
              data['target_unit']!, _targetUnitMeta));
    } else if (isInserting) {
      context.missing(_targetUnitMeta);
    }
    if (data.containsKey('planned_overrun')) {
      context.handle(
          _plannedOverrunMeta,
          plannedOverrun.isAcceptableOrUnknown(
              data['planned_overrun']!, _plannedOverrunMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('mixing_tank_id')) {
      context.handle(
          _mixingTankIdMeta,
          mixingTankId.isAcceptableOrUnknown(
              data['mixing_tank_id']!, _mixingTankIdMeta));
    }
    if (data.containsKey('aging_tank_id')) {
      context.handle(
          _agingTankIdMeta,
          agingTankId.isAcceptableOrUnknown(
              data['aging_tank_id']!, _agingTankIdMeta));
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    }
    if (data.containsKey('end_date')) {
      context.handle(_endDateMeta,
          endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta));
    }
    if (data.containsKey('actual_mix_qty')) {
      context.handle(
          _actualMixQtyMeta,
          actualMixQty.isAcceptableOrUnknown(
              data['actual_mix_qty']!, _actualMixQtyMeta));
    }
    if (data.containsKey('actual_finished_qty')) {
      context.handle(
          _actualFinishedQtyMeta,
          actualFinishedQty.isAcceptableOrUnknown(
              data['actual_finished_qty']!, _actualFinishedQtyMeta));
    }
    if (data.containsKey('actual_overrun')) {
      context.handle(
          _actualOverrunMeta,
          actualOverrun.isAcceptableOrUnknown(
              data['actual_overrun']!, _actualOverrunMeta));
    }
    if (data.containsKey('actual_yield')) {
      context.handle(
          _actualYieldMeta,
          actualYield.isAcceptableOrUnknown(
              data['actual_yield']!, _actualYieldMeta));
    }
    if (data.containsKey('total_material_cost')) {
      context.handle(
          _totalMaterialCostMeta,
          totalMaterialCost.isAcceptableOrUnknown(
              data['total_material_cost']!, _totalMaterialCostMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductionOrder map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductionOrder(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      orderNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_no'])!,
      recipeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}recipe_id'])!,
      targetQty: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}target_qty'])!,
      targetUnit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}target_unit'])!,
      plannedOverrun: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}planned_overrun']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      mixingTankId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}mixing_tank_id']),
      agingTankId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}aging_tank_id']),
      startDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_date']),
      endDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_date']),
      actualMixQty: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}actual_mix_qty']),
      actualFinishedQty: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}actual_finished_qty']),
      actualOverrun: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}actual_overrun']),
      actualYield: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}actual_yield']),
      totalMaterialCost: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}total_material_cost'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $ProductionOrdersTable createAlias(String alias) {
    return $ProductionOrdersTable(attachedDatabase, alias);
  }
}

class ProductionOrder extends DataClass implements Insertable<ProductionOrder> {
  final int id;
  final String orderNo;
  final int recipeId;
  final double targetQty;
  final String targetUnit;
  final double? plannedOverrun;
  final String status;
  final int? mixingTankId;
  final int? agingTankId;
  final DateTime? startDate;
  final DateTime? endDate;
  final double? actualMixQty;
  final double? actualFinishedQty;
  final double? actualOverrun;
  final double? actualYield;
  final double totalMaterialCost;
  final String? notes;
  final DateTime createdAt;
  const ProductionOrder(
      {required this.id,
      required this.orderNo,
      required this.recipeId,
      required this.targetQty,
      required this.targetUnit,
      this.plannedOverrun,
      required this.status,
      this.mixingTankId,
      this.agingTankId,
      this.startDate,
      this.endDate,
      this.actualMixQty,
      this.actualFinishedQty,
      this.actualOverrun,
      this.actualYield,
      required this.totalMaterialCost,
      this.notes,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['order_no'] = Variable<String>(orderNo);
    map['recipe_id'] = Variable<int>(recipeId);
    map['target_qty'] = Variable<double>(targetQty);
    map['target_unit'] = Variable<String>(targetUnit);
    if (!nullToAbsent || plannedOverrun != null) {
      map['planned_overrun'] = Variable<double>(plannedOverrun);
    }
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || mixingTankId != null) {
      map['mixing_tank_id'] = Variable<int>(mixingTankId);
    }
    if (!nullToAbsent || agingTankId != null) {
      map['aging_tank_id'] = Variable<int>(agingTankId);
    }
    if (!nullToAbsent || startDate != null) {
      map['start_date'] = Variable<DateTime>(startDate);
    }
    if (!nullToAbsent || endDate != null) {
      map['end_date'] = Variable<DateTime>(endDate);
    }
    if (!nullToAbsent || actualMixQty != null) {
      map['actual_mix_qty'] = Variable<double>(actualMixQty);
    }
    if (!nullToAbsent || actualFinishedQty != null) {
      map['actual_finished_qty'] = Variable<double>(actualFinishedQty);
    }
    if (!nullToAbsent || actualOverrun != null) {
      map['actual_overrun'] = Variable<double>(actualOverrun);
    }
    if (!nullToAbsent || actualYield != null) {
      map['actual_yield'] = Variable<double>(actualYield);
    }
    map['total_material_cost'] = Variable<double>(totalMaterialCost);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  ProductionOrdersCompanion toCompanion(bool nullToAbsent) {
    return ProductionOrdersCompanion(
      id: Value(id),
      orderNo: Value(orderNo),
      recipeId: Value(recipeId),
      targetQty: Value(targetQty),
      targetUnit: Value(targetUnit),
      plannedOverrun: plannedOverrun == null && nullToAbsent
          ? const Value.absent()
          : Value(plannedOverrun),
      status: Value(status),
      mixingTankId: mixingTankId == null && nullToAbsent
          ? const Value.absent()
          : Value(mixingTankId),
      agingTankId: agingTankId == null && nullToAbsent
          ? const Value.absent()
          : Value(agingTankId),
      startDate: startDate == null && nullToAbsent
          ? const Value.absent()
          : Value(startDate),
      endDate: endDate == null && nullToAbsent
          ? const Value.absent()
          : Value(endDate),
      actualMixQty: actualMixQty == null && nullToAbsent
          ? const Value.absent()
          : Value(actualMixQty),
      actualFinishedQty: actualFinishedQty == null && nullToAbsent
          ? const Value.absent()
          : Value(actualFinishedQty),
      actualOverrun: actualOverrun == null && nullToAbsent
          ? const Value.absent()
          : Value(actualOverrun),
      actualYield: actualYield == null && nullToAbsent
          ? const Value.absent()
          : Value(actualYield),
      totalMaterialCost: Value(totalMaterialCost),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      createdAt: Value(createdAt),
    );
  }

  factory ProductionOrder.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductionOrder(
      id: serializer.fromJson<int>(json['id']),
      orderNo: serializer.fromJson<String>(json['orderNo']),
      recipeId: serializer.fromJson<int>(json['recipeId']),
      targetQty: serializer.fromJson<double>(json['targetQty']),
      targetUnit: serializer.fromJson<String>(json['targetUnit']),
      plannedOverrun: serializer.fromJson<double?>(json['plannedOverrun']),
      status: serializer.fromJson<String>(json['status']),
      mixingTankId: serializer.fromJson<int?>(json['mixingTankId']),
      agingTankId: serializer.fromJson<int?>(json['agingTankId']),
      startDate: serializer.fromJson<DateTime?>(json['startDate']),
      endDate: serializer.fromJson<DateTime?>(json['endDate']),
      actualMixQty: serializer.fromJson<double?>(json['actualMixQty']),
      actualFinishedQty:
          serializer.fromJson<double?>(json['actualFinishedQty']),
      actualOverrun: serializer.fromJson<double?>(json['actualOverrun']),
      actualYield: serializer.fromJson<double?>(json['actualYield']),
      totalMaterialCost: serializer.fromJson<double>(json['totalMaterialCost']),
      notes: serializer.fromJson<String?>(json['notes']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'orderNo': serializer.toJson<String>(orderNo),
      'recipeId': serializer.toJson<int>(recipeId),
      'targetQty': serializer.toJson<double>(targetQty),
      'targetUnit': serializer.toJson<String>(targetUnit),
      'plannedOverrun': serializer.toJson<double?>(plannedOverrun),
      'status': serializer.toJson<String>(status),
      'mixingTankId': serializer.toJson<int?>(mixingTankId),
      'agingTankId': serializer.toJson<int?>(agingTankId),
      'startDate': serializer.toJson<DateTime?>(startDate),
      'endDate': serializer.toJson<DateTime?>(endDate),
      'actualMixQty': serializer.toJson<double?>(actualMixQty),
      'actualFinishedQty': serializer.toJson<double?>(actualFinishedQty),
      'actualOverrun': serializer.toJson<double?>(actualOverrun),
      'actualYield': serializer.toJson<double?>(actualYield),
      'totalMaterialCost': serializer.toJson<double>(totalMaterialCost),
      'notes': serializer.toJson<String?>(notes),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  ProductionOrder copyWith(
          {int? id,
          String? orderNo,
          int? recipeId,
          double? targetQty,
          String? targetUnit,
          Value<double?> plannedOverrun = const Value.absent(),
          String? status,
          Value<int?> mixingTankId = const Value.absent(),
          Value<int?> agingTankId = const Value.absent(),
          Value<DateTime?> startDate = const Value.absent(),
          Value<DateTime?> endDate = const Value.absent(),
          Value<double?> actualMixQty = const Value.absent(),
          Value<double?> actualFinishedQty = const Value.absent(),
          Value<double?> actualOverrun = const Value.absent(),
          Value<double?> actualYield = const Value.absent(),
          double? totalMaterialCost,
          Value<String?> notes = const Value.absent(),
          DateTime? createdAt}) =>
      ProductionOrder(
        id: id ?? this.id,
        orderNo: orderNo ?? this.orderNo,
        recipeId: recipeId ?? this.recipeId,
        targetQty: targetQty ?? this.targetQty,
        targetUnit: targetUnit ?? this.targetUnit,
        plannedOverrun:
            plannedOverrun.present ? plannedOverrun.value : this.plannedOverrun,
        status: status ?? this.status,
        mixingTankId:
            mixingTankId.present ? mixingTankId.value : this.mixingTankId,
        agingTankId: agingTankId.present ? agingTankId.value : this.agingTankId,
        startDate: startDate.present ? startDate.value : this.startDate,
        endDate: endDate.present ? endDate.value : this.endDate,
        actualMixQty:
            actualMixQty.present ? actualMixQty.value : this.actualMixQty,
        actualFinishedQty: actualFinishedQty.present
            ? actualFinishedQty.value
            : this.actualFinishedQty,
        actualOverrun:
            actualOverrun.present ? actualOverrun.value : this.actualOverrun,
        actualYield: actualYield.present ? actualYield.value : this.actualYield,
        totalMaterialCost: totalMaterialCost ?? this.totalMaterialCost,
        notes: notes.present ? notes.value : this.notes,
        createdAt: createdAt ?? this.createdAt,
      );
  ProductionOrder copyWithCompanion(ProductionOrdersCompanion data) {
    return ProductionOrder(
      id: data.id.present ? data.id.value : this.id,
      orderNo: data.orderNo.present ? data.orderNo.value : this.orderNo,
      recipeId: data.recipeId.present ? data.recipeId.value : this.recipeId,
      targetQty: data.targetQty.present ? data.targetQty.value : this.targetQty,
      targetUnit:
          data.targetUnit.present ? data.targetUnit.value : this.targetUnit,
      plannedOverrun: data.plannedOverrun.present
          ? data.plannedOverrun.value
          : this.plannedOverrun,
      status: data.status.present ? data.status.value : this.status,
      mixingTankId: data.mixingTankId.present
          ? data.mixingTankId.value
          : this.mixingTankId,
      agingTankId:
          data.agingTankId.present ? data.agingTankId.value : this.agingTankId,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      endDate: data.endDate.present ? data.endDate.value : this.endDate,
      actualMixQty: data.actualMixQty.present
          ? data.actualMixQty.value
          : this.actualMixQty,
      actualFinishedQty: data.actualFinishedQty.present
          ? data.actualFinishedQty.value
          : this.actualFinishedQty,
      actualOverrun: data.actualOverrun.present
          ? data.actualOverrun.value
          : this.actualOverrun,
      actualYield:
          data.actualYield.present ? data.actualYield.value : this.actualYield,
      totalMaterialCost: data.totalMaterialCost.present
          ? data.totalMaterialCost.value
          : this.totalMaterialCost,
      notes: data.notes.present ? data.notes.value : this.notes,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductionOrder(')
          ..write('id: $id, ')
          ..write('orderNo: $orderNo, ')
          ..write('recipeId: $recipeId, ')
          ..write('targetQty: $targetQty, ')
          ..write('targetUnit: $targetUnit, ')
          ..write('plannedOverrun: $plannedOverrun, ')
          ..write('status: $status, ')
          ..write('mixingTankId: $mixingTankId, ')
          ..write('agingTankId: $agingTankId, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('actualMixQty: $actualMixQty, ')
          ..write('actualFinishedQty: $actualFinishedQty, ')
          ..write('actualOverrun: $actualOverrun, ')
          ..write('actualYield: $actualYield, ')
          ..write('totalMaterialCost: $totalMaterialCost, ')
          ..write('notes: $notes, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      orderNo,
      recipeId,
      targetQty,
      targetUnit,
      plannedOverrun,
      status,
      mixingTankId,
      agingTankId,
      startDate,
      endDate,
      actualMixQty,
      actualFinishedQty,
      actualOverrun,
      actualYield,
      totalMaterialCost,
      notes,
      createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductionOrder &&
          other.id == this.id &&
          other.orderNo == this.orderNo &&
          other.recipeId == this.recipeId &&
          other.targetQty == this.targetQty &&
          other.targetUnit == this.targetUnit &&
          other.plannedOverrun == this.plannedOverrun &&
          other.status == this.status &&
          other.mixingTankId == this.mixingTankId &&
          other.agingTankId == this.agingTankId &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.actualMixQty == this.actualMixQty &&
          other.actualFinishedQty == this.actualFinishedQty &&
          other.actualOverrun == this.actualOverrun &&
          other.actualYield == this.actualYield &&
          other.totalMaterialCost == this.totalMaterialCost &&
          other.notes == this.notes &&
          other.createdAt == this.createdAt);
}

class ProductionOrdersCompanion extends UpdateCompanion<ProductionOrder> {
  final Value<int> id;
  final Value<String> orderNo;
  final Value<int> recipeId;
  final Value<double> targetQty;
  final Value<String> targetUnit;
  final Value<double?> plannedOverrun;
  final Value<String> status;
  final Value<int?> mixingTankId;
  final Value<int?> agingTankId;
  final Value<DateTime?> startDate;
  final Value<DateTime?> endDate;
  final Value<double?> actualMixQty;
  final Value<double?> actualFinishedQty;
  final Value<double?> actualOverrun;
  final Value<double?> actualYield;
  final Value<double> totalMaterialCost;
  final Value<String?> notes;
  final Value<DateTime> createdAt;
  const ProductionOrdersCompanion({
    this.id = const Value.absent(),
    this.orderNo = const Value.absent(),
    this.recipeId = const Value.absent(),
    this.targetQty = const Value.absent(),
    this.targetUnit = const Value.absent(),
    this.plannedOverrun = const Value.absent(),
    this.status = const Value.absent(),
    this.mixingTankId = const Value.absent(),
    this.agingTankId = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.actualMixQty = const Value.absent(),
    this.actualFinishedQty = const Value.absent(),
    this.actualOverrun = const Value.absent(),
    this.actualYield = const Value.absent(),
    this.totalMaterialCost = const Value.absent(),
    this.notes = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  ProductionOrdersCompanion.insert({
    this.id = const Value.absent(),
    required String orderNo,
    required int recipeId,
    required double targetQty,
    required String targetUnit,
    this.plannedOverrun = const Value.absent(),
    this.status = const Value.absent(),
    this.mixingTankId = const Value.absent(),
    this.agingTankId = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.actualMixQty = const Value.absent(),
    this.actualFinishedQty = const Value.absent(),
    this.actualOverrun = const Value.absent(),
    this.actualYield = const Value.absent(),
    this.totalMaterialCost = const Value.absent(),
    this.notes = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : orderNo = Value(orderNo),
        recipeId = Value(recipeId),
        targetQty = Value(targetQty),
        targetUnit = Value(targetUnit);
  static Insertable<ProductionOrder> custom({
    Expression<int>? id,
    Expression<String>? orderNo,
    Expression<int>? recipeId,
    Expression<double>? targetQty,
    Expression<String>? targetUnit,
    Expression<double>? plannedOverrun,
    Expression<String>? status,
    Expression<int>? mixingTankId,
    Expression<int>? agingTankId,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<double>? actualMixQty,
    Expression<double>? actualFinishedQty,
    Expression<double>? actualOverrun,
    Expression<double>? actualYield,
    Expression<double>? totalMaterialCost,
    Expression<String>? notes,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (orderNo != null) 'order_no': orderNo,
      if (recipeId != null) 'recipe_id': recipeId,
      if (targetQty != null) 'target_qty': targetQty,
      if (targetUnit != null) 'target_unit': targetUnit,
      if (plannedOverrun != null) 'planned_overrun': plannedOverrun,
      if (status != null) 'status': status,
      if (mixingTankId != null) 'mixing_tank_id': mixingTankId,
      if (agingTankId != null) 'aging_tank_id': agingTankId,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (actualMixQty != null) 'actual_mix_qty': actualMixQty,
      if (actualFinishedQty != null) 'actual_finished_qty': actualFinishedQty,
      if (actualOverrun != null) 'actual_overrun': actualOverrun,
      if (actualYield != null) 'actual_yield': actualYield,
      if (totalMaterialCost != null) 'total_material_cost': totalMaterialCost,
      if (notes != null) 'notes': notes,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  ProductionOrdersCompanion copyWith(
      {Value<int>? id,
      Value<String>? orderNo,
      Value<int>? recipeId,
      Value<double>? targetQty,
      Value<String>? targetUnit,
      Value<double?>? plannedOverrun,
      Value<String>? status,
      Value<int?>? mixingTankId,
      Value<int?>? agingTankId,
      Value<DateTime?>? startDate,
      Value<DateTime?>? endDate,
      Value<double?>? actualMixQty,
      Value<double?>? actualFinishedQty,
      Value<double?>? actualOverrun,
      Value<double?>? actualYield,
      Value<double>? totalMaterialCost,
      Value<String?>? notes,
      Value<DateTime>? createdAt}) {
    return ProductionOrdersCompanion(
      id: id ?? this.id,
      orderNo: orderNo ?? this.orderNo,
      recipeId: recipeId ?? this.recipeId,
      targetQty: targetQty ?? this.targetQty,
      targetUnit: targetUnit ?? this.targetUnit,
      plannedOverrun: plannedOverrun ?? this.plannedOverrun,
      status: status ?? this.status,
      mixingTankId: mixingTankId ?? this.mixingTankId,
      agingTankId: agingTankId ?? this.agingTankId,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      actualMixQty: actualMixQty ?? this.actualMixQty,
      actualFinishedQty: actualFinishedQty ?? this.actualFinishedQty,
      actualOverrun: actualOverrun ?? this.actualOverrun,
      actualYield: actualYield ?? this.actualYield,
      totalMaterialCost: totalMaterialCost ?? this.totalMaterialCost,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (orderNo.present) {
      map['order_no'] = Variable<String>(orderNo.value);
    }
    if (recipeId.present) {
      map['recipe_id'] = Variable<int>(recipeId.value);
    }
    if (targetQty.present) {
      map['target_qty'] = Variable<double>(targetQty.value);
    }
    if (targetUnit.present) {
      map['target_unit'] = Variable<String>(targetUnit.value);
    }
    if (plannedOverrun.present) {
      map['planned_overrun'] = Variable<double>(plannedOverrun.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (mixingTankId.present) {
      map['mixing_tank_id'] = Variable<int>(mixingTankId.value);
    }
    if (agingTankId.present) {
      map['aging_tank_id'] = Variable<int>(agingTankId.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<DateTime>(endDate.value);
    }
    if (actualMixQty.present) {
      map['actual_mix_qty'] = Variable<double>(actualMixQty.value);
    }
    if (actualFinishedQty.present) {
      map['actual_finished_qty'] = Variable<double>(actualFinishedQty.value);
    }
    if (actualOverrun.present) {
      map['actual_overrun'] = Variable<double>(actualOverrun.value);
    }
    if (actualYield.present) {
      map['actual_yield'] = Variable<double>(actualYield.value);
    }
    if (totalMaterialCost.present) {
      map['total_material_cost'] = Variable<double>(totalMaterialCost.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductionOrdersCompanion(')
          ..write('id: $id, ')
          ..write('orderNo: $orderNo, ')
          ..write('recipeId: $recipeId, ')
          ..write('targetQty: $targetQty, ')
          ..write('targetUnit: $targetUnit, ')
          ..write('plannedOverrun: $plannedOverrun, ')
          ..write('status: $status, ')
          ..write('mixingTankId: $mixingTankId, ')
          ..write('agingTankId: $agingTankId, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('actualMixQty: $actualMixQty, ')
          ..write('actualFinishedQty: $actualFinishedQty, ')
          ..write('actualOverrun: $actualOverrun, ')
          ..write('actualYield: $actualYield, ')
          ..write('totalMaterialCost: $totalMaterialCost, ')
          ..write('notes: $notes, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $ProductionIssuesTable extends ProductionIssues
    with TableInfo<$ProductionIssuesTable, ProductionIssue> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductionIssuesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _productionOrderIdMeta =
      const VerificationMeta('productionOrderId');
  @override
  late final GeneratedColumn<int> productionOrderId = GeneratedColumn<int>(
      'production_order_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES production_orders (id)'));
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES items (id)'));
  static const VerificationMeta _batchIdMeta =
      const VerificationMeta('batchId');
  @override
  late final GeneratedColumn<int> batchId = GeneratedColumn<int>(
      'batch_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES batches (id)'));
  static const VerificationMeta _qtyMeta = const VerificationMeta('qty');
  @override
  late final GeneratedColumn<double> qty = GeneratedColumn<double>(
      'qty', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<String> unit = GeneratedColumn<String>(
      'unit', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _unitCostMeta =
      const VerificationMeta('unitCost');
  @override
  late final GeneratedColumn<double> unitCost = GeneratedColumn<double>(
      'unit_cost', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _tankIdMeta = const VerificationMeta('tankId');
  @override
  late final GeneratedColumn<int> tankId = GeneratedColumn<int>(
      'tank_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES tanks (id)'));
  static const VerificationMeta _issuedAtMeta =
      const VerificationMeta('issuedAt');
  @override
  late final GeneratedColumn<DateTime> issuedAt = GeneratedColumn<DateTime>(
      'issued_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        productionOrderId,
        itemId,
        batchId,
        qty,
        unit,
        unitCost,
        tankId,
        issuedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'production_issues';
  @override
  VerificationContext validateIntegrity(Insertable<ProductionIssue> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('production_order_id')) {
      context.handle(
          _productionOrderIdMeta,
          productionOrderId.isAcceptableOrUnknown(
              data['production_order_id']!, _productionOrderIdMeta));
    } else if (isInserting) {
      context.missing(_productionOrderIdMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('batch_id')) {
      context.handle(_batchIdMeta,
          batchId.isAcceptableOrUnknown(data['batch_id']!, _batchIdMeta));
    }
    if (data.containsKey('qty')) {
      context.handle(
          _qtyMeta, qty.isAcceptableOrUnknown(data['qty']!, _qtyMeta));
    } else if (isInserting) {
      context.missing(_qtyMeta);
    }
    if (data.containsKey('unit')) {
      context.handle(
          _unitMeta, unit.isAcceptableOrUnknown(data['unit']!, _unitMeta));
    }
    if (data.containsKey('unit_cost')) {
      context.handle(_unitCostMeta,
          unitCost.isAcceptableOrUnknown(data['unit_cost']!, _unitCostMeta));
    }
    if (data.containsKey('tank_id')) {
      context.handle(_tankIdMeta,
          tankId.isAcceptableOrUnknown(data['tank_id']!, _tankIdMeta));
    }
    if (data.containsKey('issued_at')) {
      context.handle(_issuedAtMeta,
          issuedAt.isAcceptableOrUnknown(data['issued_at']!, _issuedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductionIssue map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductionIssue(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      productionOrderId: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}production_order_id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
      batchId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}batch_id']),
      qty: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}qty'])!,
      unit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}unit']),
      unitCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}unit_cost']),
      tankId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tank_id']),
      issuedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}issued_at'])!,
    );
  }

  @override
  $ProductionIssuesTable createAlias(String alias) {
    return $ProductionIssuesTable(attachedDatabase, alias);
  }
}

class ProductionIssue extends DataClass implements Insertable<ProductionIssue> {
  final int id;
  final int productionOrderId;
  final int itemId;
  final int? batchId;
  final double qty;
  final String? unit;
  final double? unitCost;
  final int? tankId;
  final DateTime issuedAt;
  const ProductionIssue(
      {required this.id,
      required this.productionOrderId,
      required this.itemId,
      this.batchId,
      required this.qty,
      this.unit,
      this.unitCost,
      this.tankId,
      required this.issuedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['production_order_id'] = Variable<int>(productionOrderId);
    map['item_id'] = Variable<int>(itemId);
    if (!nullToAbsent || batchId != null) {
      map['batch_id'] = Variable<int>(batchId);
    }
    map['qty'] = Variable<double>(qty);
    if (!nullToAbsent || unit != null) {
      map['unit'] = Variable<String>(unit);
    }
    if (!nullToAbsent || unitCost != null) {
      map['unit_cost'] = Variable<double>(unitCost);
    }
    if (!nullToAbsent || tankId != null) {
      map['tank_id'] = Variable<int>(tankId);
    }
    map['issued_at'] = Variable<DateTime>(issuedAt);
    return map;
  }

  ProductionIssuesCompanion toCompanion(bool nullToAbsent) {
    return ProductionIssuesCompanion(
      id: Value(id),
      productionOrderId: Value(productionOrderId),
      itemId: Value(itemId),
      batchId: batchId == null && nullToAbsent
          ? const Value.absent()
          : Value(batchId),
      qty: Value(qty),
      unit: unit == null && nullToAbsent ? const Value.absent() : Value(unit),
      unitCost: unitCost == null && nullToAbsent
          ? const Value.absent()
          : Value(unitCost),
      tankId:
          tankId == null && nullToAbsent ? const Value.absent() : Value(tankId),
      issuedAt: Value(issuedAt),
    );
  }

  factory ProductionIssue.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductionIssue(
      id: serializer.fromJson<int>(json['id']),
      productionOrderId: serializer.fromJson<int>(json['productionOrderId']),
      itemId: serializer.fromJson<int>(json['itemId']),
      batchId: serializer.fromJson<int?>(json['batchId']),
      qty: serializer.fromJson<double>(json['qty']),
      unit: serializer.fromJson<String?>(json['unit']),
      unitCost: serializer.fromJson<double?>(json['unitCost']),
      tankId: serializer.fromJson<int?>(json['tankId']),
      issuedAt: serializer.fromJson<DateTime>(json['issuedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'productionOrderId': serializer.toJson<int>(productionOrderId),
      'itemId': serializer.toJson<int>(itemId),
      'batchId': serializer.toJson<int?>(batchId),
      'qty': serializer.toJson<double>(qty),
      'unit': serializer.toJson<String?>(unit),
      'unitCost': serializer.toJson<double?>(unitCost),
      'tankId': serializer.toJson<int?>(tankId),
      'issuedAt': serializer.toJson<DateTime>(issuedAt),
    };
  }

  ProductionIssue copyWith(
          {int? id,
          int? productionOrderId,
          int? itemId,
          Value<int?> batchId = const Value.absent(),
          double? qty,
          Value<String?> unit = const Value.absent(),
          Value<double?> unitCost = const Value.absent(),
          Value<int?> tankId = const Value.absent(),
          DateTime? issuedAt}) =>
      ProductionIssue(
        id: id ?? this.id,
        productionOrderId: productionOrderId ?? this.productionOrderId,
        itemId: itemId ?? this.itemId,
        batchId: batchId.present ? batchId.value : this.batchId,
        qty: qty ?? this.qty,
        unit: unit.present ? unit.value : this.unit,
        unitCost: unitCost.present ? unitCost.value : this.unitCost,
        tankId: tankId.present ? tankId.value : this.tankId,
        issuedAt: issuedAt ?? this.issuedAt,
      );
  ProductionIssue copyWithCompanion(ProductionIssuesCompanion data) {
    return ProductionIssue(
      id: data.id.present ? data.id.value : this.id,
      productionOrderId: data.productionOrderId.present
          ? data.productionOrderId.value
          : this.productionOrderId,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      batchId: data.batchId.present ? data.batchId.value : this.batchId,
      qty: data.qty.present ? data.qty.value : this.qty,
      unit: data.unit.present ? data.unit.value : this.unit,
      unitCost: data.unitCost.present ? data.unitCost.value : this.unitCost,
      tankId: data.tankId.present ? data.tankId.value : this.tankId,
      issuedAt: data.issuedAt.present ? data.issuedAt.value : this.issuedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductionIssue(')
          ..write('id: $id, ')
          ..write('productionOrderId: $productionOrderId, ')
          ..write('itemId: $itemId, ')
          ..write('batchId: $batchId, ')
          ..write('qty: $qty, ')
          ..write('unit: $unit, ')
          ..write('unitCost: $unitCost, ')
          ..write('tankId: $tankId, ')
          ..write('issuedAt: $issuedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, productionOrderId, itemId, batchId, qty,
      unit, unitCost, tankId, issuedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductionIssue &&
          other.id == this.id &&
          other.productionOrderId == this.productionOrderId &&
          other.itemId == this.itemId &&
          other.batchId == this.batchId &&
          other.qty == this.qty &&
          other.unit == this.unit &&
          other.unitCost == this.unitCost &&
          other.tankId == this.tankId &&
          other.issuedAt == this.issuedAt);
}

class ProductionIssuesCompanion extends UpdateCompanion<ProductionIssue> {
  final Value<int> id;
  final Value<int> productionOrderId;
  final Value<int> itemId;
  final Value<int?> batchId;
  final Value<double> qty;
  final Value<String?> unit;
  final Value<double?> unitCost;
  final Value<int?> tankId;
  final Value<DateTime> issuedAt;
  const ProductionIssuesCompanion({
    this.id = const Value.absent(),
    this.productionOrderId = const Value.absent(),
    this.itemId = const Value.absent(),
    this.batchId = const Value.absent(),
    this.qty = const Value.absent(),
    this.unit = const Value.absent(),
    this.unitCost = const Value.absent(),
    this.tankId = const Value.absent(),
    this.issuedAt = const Value.absent(),
  });
  ProductionIssuesCompanion.insert({
    this.id = const Value.absent(),
    required int productionOrderId,
    required int itemId,
    this.batchId = const Value.absent(),
    required double qty,
    this.unit = const Value.absent(),
    this.unitCost = const Value.absent(),
    this.tankId = const Value.absent(),
    this.issuedAt = const Value.absent(),
  })  : productionOrderId = Value(productionOrderId),
        itemId = Value(itemId),
        qty = Value(qty);
  static Insertable<ProductionIssue> custom({
    Expression<int>? id,
    Expression<int>? productionOrderId,
    Expression<int>? itemId,
    Expression<int>? batchId,
    Expression<double>? qty,
    Expression<String>? unit,
    Expression<double>? unitCost,
    Expression<int>? tankId,
    Expression<DateTime>? issuedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (productionOrderId != null) 'production_order_id': productionOrderId,
      if (itemId != null) 'item_id': itemId,
      if (batchId != null) 'batch_id': batchId,
      if (qty != null) 'qty': qty,
      if (unit != null) 'unit': unit,
      if (unitCost != null) 'unit_cost': unitCost,
      if (tankId != null) 'tank_id': tankId,
      if (issuedAt != null) 'issued_at': issuedAt,
    });
  }

  ProductionIssuesCompanion copyWith(
      {Value<int>? id,
      Value<int>? productionOrderId,
      Value<int>? itemId,
      Value<int?>? batchId,
      Value<double>? qty,
      Value<String?>? unit,
      Value<double?>? unitCost,
      Value<int?>? tankId,
      Value<DateTime>? issuedAt}) {
    return ProductionIssuesCompanion(
      id: id ?? this.id,
      productionOrderId: productionOrderId ?? this.productionOrderId,
      itemId: itemId ?? this.itemId,
      batchId: batchId ?? this.batchId,
      qty: qty ?? this.qty,
      unit: unit ?? this.unit,
      unitCost: unitCost ?? this.unitCost,
      tankId: tankId ?? this.tankId,
      issuedAt: issuedAt ?? this.issuedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (productionOrderId.present) {
      map['production_order_id'] = Variable<int>(productionOrderId.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (batchId.present) {
      map['batch_id'] = Variable<int>(batchId.value);
    }
    if (qty.present) {
      map['qty'] = Variable<double>(qty.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    if (unitCost.present) {
      map['unit_cost'] = Variable<double>(unitCost.value);
    }
    if (tankId.present) {
      map['tank_id'] = Variable<int>(tankId.value);
    }
    if (issuedAt.present) {
      map['issued_at'] = Variable<DateTime>(issuedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductionIssuesCompanion(')
          ..write('id: $id, ')
          ..write('productionOrderId: $productionOrderId, ')
          ..write('itemId: $itemId, ')
          ..write('batchId: $batchId, ')
          ..write('qty: $qty, ')
          ..write('unit: $unit, ')
          ..write('unitCost: $unitCost, ')
          ..write('tankId: $tankId, ')
          ..write('issuedAt: $issuedAt')
          ..write(')'))
        .toString();
  }
}

class $ProductionReceiptsTable extends ProductionReceipts
    with TableInfo<$ProductionReceiptsTable, ProductionReceipt> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductionReceiptsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _productionOrderIdMeta =
      const VerificationMeta('productionOrderId');
  @override
  late final GeneratedColumn<int> productionOrderId = GeneratedColumn<int>(
      'production_order_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES production_orders (id)'));
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES items (id)'));
  static const VerificationMeta _batchNoMeta =
      const VerificationMeta('batchNo');
  @override
  late final GeneratedColumn<String> batchNo = GeneratedColumn<String>(
      'batch_no', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _qtyMeta = const VerificationMeta('qty');
  @override
  late final GeneratedColumn<double> qty = GeneratedColumn<double>(
      'qty', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<String> unit = GeneratedColumn<String>(
      'unit', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _overrunPercentMeta =
      const VerificationMeta('overrunPercent');
  @override
  late final GeneratedColumn<double> overrunPercent = GeneratedColumn<double>(
      'overrun_percent', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _unitCostMeta =
      const VerificationMeta('unitCost');
  @override
  late final GeneratedColumn<double> unitCost = GeneratedColumn<double>(
      'unit_cost', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _mfgDateMeta =
      const VerificationMeta('mfgDate');
  @override
  late final GeneratedColumn<DateTime> mfgDate = GeneratedColumn<DateTime>(
      'mfg_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _expiryDateMeta =
      const VerificationMeta('expiryDate');
  @override
  late final GeneratedColumn<DateTime> expiryDate = GeneratedColumn<DateTime>(
      'expiry_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _warehouseIdMeta =
      const VerificationMeta('warehouseId');
  @override
  late final GeneratedColumn<int> warehouseId = GeneratedColumn<int>(
      'warehouse_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES warehouses (id)'));
  static const VerificationMeta _receivedAtMeta =
      const VerificationMeta('receivedAt');
  @override
  late final GeneratedColumn<DateTime> receivedAt = GeneratedColumn<DateTime>(
      'received_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        productionOrderId,
        itemId,
        batchNo,
        qty,
        unit,
        overrunPercent,
        unitCost,
        mfgDate,
        expiryDate,
        warehouseId,
        receivedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'production_receipts';
  @override
  VerificationContext validateIntegrity(Insertable<ProductionReceipt> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('production_order_id')) {
      context.handle(
          _productionOrderIdMeta,
          productionOrderId.isAcceptableOrUnknown(
              data['production_order_id']!, _productionOrderIdMeta));
    } else if (isInserting) {
      context.missing(_productionOrderIdMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('batch_no')) {
      context.handle(_batchNoMeta,
          batchNo.isAcceptableOrUnknown(data['batch_no']!, _batchNoMeta));
    } else if (isInserting) {
      context.missing(_batchNoMeta);
    }
    if (data.containsKey('qty')) {
      context.handle(
          _qtyMeta, qty.isAcceptableOrUnknown(data['qty']!, _qtyMeta));
    } else if (isInserting) {
      context.missing(_qtyMeta);
    }
    if (data.containsKey('unit')) {
      context.handle(
          _unitMeta, unit.isAcceptableOrUnknown(data['unit']!, _unitMeta));
    }
    if (data.containsKey('overrun_percent')) {
      context.handle(
          _overrunPercentMeta,
          overrunPercent.isAcceptableOrUnknown(
              data['overrun_percent']!, _overrunPercentMeta));
    }
    if (data.containsKey('unit_cost')) {
      context.handle(_unitCostMeta,
          unitCost.isAcceptableOrUnknown(data['unit_cost']!, _unitCostMeta));
    }
    if (data.containsKey('mfg_date')) {
      context.handle(_mfgDateMeta,
          mfgDate.isAcceptableOrUnknown(data['mfg_date']!, _mfgDateMeta));
    }
    if (data.containsKey('expiry_date')) {
      context.handle(
          _expiryDateMeta,
          expiryDate.isAcceptableOrUnknown(
              data['expiry_date']!, _expiryDateMeta));
    }
    if (data.containsKey('warehouse_id')) {
      context.handle(
          _warehouseIdMeta,
          warehouseId.isAcceptableOrUnknown(
              data['warehouse_id']!, _warehouseIdMeta));
    }
    if (data.containsKey('received_at')) {
      context.handle(
          _receivedAtMeta,
          receivedAt.isAcceptableOrUnknown(
              data['received_at']!, _receivedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductionReceipt map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductionReceipt(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      productionOrderId: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}production_order_id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
      batchNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}batch_no'])!,
      qty: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}qty'])!,
      unit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}unit']),
      overrunPercent: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}overrun_percent']),
      unitCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}unit_cost']),
      mfgDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}mfg_date']),
      expiryDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expiry_date']),
      warehouseId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}warehouse_id']),
      receivedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}received_at'])!,
    );
  }

  @override
  $ProductionReceiptsTable createAlias(String alias) {
    return $ProductionReceiptsTable(attachedDatabase, alias);
  }
}

class ProductionReceipt extends DataClass
    implements Insertable<ProductionReceipt> {
  final int id;
  final int productionOrderId;
  final int itemId;
  final String batchNo;
  final double qty;
  final String? unit;
  final double? overrunPercent;
  final double? unitCost;
  final DateTime? mfgDate;
  final DateTime? expiryDate;
  final int? warehouseId;
  final DateTime receivedAt;
  const ProductionReceipt(
      {required this.id,
      required this.productionOrderId,
      required this.itemId,
      required this.batchNo,
      required this.qty,
      this.unit,
      this.overrunPercent,
      this.unitCost,
      this.mfgDate,
      this.expiryDate,
      this.warehouseId,
      required this.receivedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['production_order_id'] = Variable<int>(productionOrderId);
    map['item_id'] = Variable<int>(itemId);
    map['batch_no'] = Variable<String>(batchNo);
    map['qty'] = Variable<double>(qty);
    if (!nullToAbsent || unit != null) {
      map['unit'] = Variable<String>(unit);
    }
    if (!nullToAbsent || overrunPercent != null) {
      map['overrun_percent'] = Variable<double>(overrunPercent);
    }
    if (!nullToAbsent || unitCost != null) {
      map['unit_cost'] = Variable<double>(unitCost);
    }
    if (!nullToAbsent || mfgDate != null) {
      map['mfg_date'] = Variable<DateTime>(mfgDate);
    }
    if (!nullToAbsent || expiryDate != null) {
      map['expiry_date'] = Variable<DateTime>(expiryDate);
    }
    if (!nullToAbsent || warehouseId != null) {
      map['warehouse_id'] = Variable<int>(warehouseId);
    }
    map['received_at'] = Variable<DateTime>(receivedAt);
    return map;
  }

  ProductionReceiptsCompanion toCompanion(bool nullToAbsent) {
    return ProductionReceiptsCompanion(
      id: Value(id),
      productionOrderId: Value(productionOrderId),
      itemId: Value(itemId),
      batchNo: Value(batchNo),
      qty: Value(qty),
      unit: unit == null && nullToAbsent ? const Value.absent() : Value(unit),
      overrunPercent: overrunPercent == null && nullToAbsent
          ? const Value.absent()
          : Value(overrunPercent),
      unitCost: unitCost == null && nullToAbsent
          ? const Value.absent()
          : Value(unitCost),
      mfgDate: mfgDate == null && nullToAbsent
          ? const Value.absent()
          : Value(mfgDate),
      expiryDate: expiryDate == null && nullToAbsent
          ? const Value.absent()
          : Value(expiryDate),
      warehouseId: warehouseId == null && nullToAbsent
          ? const Value.absent()
          : Value(warehouseId),
      receivedAt: Value(receivedAt),
    );
  }

  factory ProductionReceipt.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductionReceipt(
      id: serializer.fromJson<int>(json['id']),
      productionOrderId: serializer.fromJson<int>(json['productionOrderId']),
      itemId: serializer.fromJson<int>(json['itemId']),
      batchNo: serializer.fromJson<String>(json['batchNo']),
      qty: serializer.fromJson<double>(json['qty']),
      unit: serializer.fromJson<String?>(json['unit']),
      overrunPercent: serializer.fromJson<double?>(json['overrunPercent']),
      unitCost: serializer.fromJson<double?>(json['unitCost']),
      mfgDate: serializer.fromJson<DateTime?>(json['mfgDate']),
      expiryDate: serializer.fromJson<DateTime?>(json['expiryDate']),
      warehouseId: serializer.fromJson<int?>(json['warehouseId']),
      receivedAt: serializer.fromJson<DateTime>(json['receivedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'productionOrderId': serializer.toJson<int>(productionOrderId),
      'itemId': serializer.toJson<int>(itemId),
      'batchNo': serializer.toJson<String>(batchNo),
      'qty': serializer.toJson<double>(qty),
      'unit': serializer.toJson<String?>(unit),
      'overrunPercent': serializer.toJson<double?>(overrunPercent),
      'unitCost': serializer.toJson<double?>(unitCost),
      'mfgDate': serializer.toJson<DateTime?>(mfgDate),
      'expiryDate': serializer.toJson<DateTime?>(expiryDate),
      'warehouseId': serializer.toJson<int?>(warehouseId),
      'receivedAt': serializer.toJson<DateTime>(receivedAt),
    };
  }

  ProductionReceipt copyWith(
          {int? id,
          int? productionOrderId,
          int? itemId,
          String? batchNo,
          double? qty,
          Value<String?> unit = const Value.absent(),
          Value<double?> overrunPercent = const Value.absent(),
          Value<double?> unitCost = const Value.absent(),
          Value<DateTime?> mfgDate = const Value.absent(),
          Value<DateTime?> expiryDate = const Value.absent(),
          Value<int?> warehouseId = const Value.absent(),
          DateTime? receivedAt}) =>
      ProductionReceipt(
        id: id ?? this.id,
        productionOrderId: productionOrderId ?? this.productionOrderId,
        itemId: itemId ?? this.itemId,
        batchNo: batchNo ?? this.batchNo,
        qty: qty ?? this.qty,
        unit: unit.present ? unit.value : this.unit,
        overrunPercent:
            overrunPercent.present ? overrunPercent.value : this.overrunPercent,
        unitCost: unitCost.present ? unitCost.value : this.unitCost,
        mfgDate: mfgDate.present ? mfgDate.value : this.mfgDate,
        expiryDate: expiryDate.present ? expiryDate.value : this.expiryDate,
        warehouseId: warehouseId.present ? warehouseId.value : this.warehouseId,
        receivedAt: receivedAt ?? this.receivedAt,
      );
  ProductionReceipt copyWithCompanion(ProductionReceiptsCompanion data) {
    return ProductionReceipt(
      id: data.id.present ? data.id.value : this.id,
      productionOrderId: data.productionOrderId.present
          ? data.productionOrderId.value
          : this.productionOrderId,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      batchNo: data.batchNo.present ? data.batchNo.value : this.batchNo,
      qty: data.qty.present ? data.qty.value : this.qty,
      unit: data.unit.present ? data.unit.value : this.unit,
      overrunPercent: data.overrunPercent.present
          ? data.overrunPercent.value
          : this.overrunPercent,
      unitCost: data.unitCost.present ? data.unitCost.value : this.unitCost,
      mfgDate: data.mfgDate.present ? data.mfgDate.value : this.mfgDate,
      expiryDate:
          data.expiryDate.present ? data.expiryDate.value : this.expiryDate,
      warehouseId:
          data.warehouseId.present ? data.warehouseId.value : this.warehouseId,
      receivedAt:
          data.receivedAt.present ? data.receivedAt.value : this.receivedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductionReceipt(')
          ..write('id: $id, ')
          ..write('productionOrderId: $productionOrderId, ')
          ..write('itemId: $itemId, ')
          ..write('batchNo: $batchNo, ')
          ..write('qty: $qty, ')
          ..write('unit: $unit, ')
          ..write('overrunPercent: $overrunPercent, ')
          ..write('unitCost: $unitCost, ')
          ..write('mfgDate: $mfgDate, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('warehouseId: $warehouseId, ')
          ..write('receivedAt: $receivedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      productionOrderId,
      itemId,
      batchNo,
      qty,
      unit,
      overrunPercent,
      unitCost,
      mfgDate,
      expiryDate,
      warehouseId,
      receivedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductionReceipt &&
          other.id == this.id &&
          other.productionOrderId == this.productionOrderId &&
          other.itemId == this.itemId &&
          other.batchNo == this.batchNo &&
          other.qty == this.qty &&
          other.unit == this.unit &&
          other.overrunPercent == this.overrunPercent &&
          other.unitCost == this.unitCost &&
          other.mfgDate == this.mfgDate &&
          other.expiryDate == this.expiryDate &&
          other.warehouseId == this.warehouseId &&
          other.receivedAt == this.receivedAt);
}

class ProductionReceiptsCompanion extends UpdateCompanion<ProductionReceipt> {
  final Value<int> id;
  final Value<int> productionOrderId;
  final Value<int> itemId;
  final Value<String> batchNo;
  final Value<double> qty;
  final Value<String?> unit;
  final Value<double?> overrunPercent;
  final Value<double?> unitCost;
  final Value<DateTime?> mfgDate;
  final Value<DateTime?> expiryDate;
  final Value<int?> warehouseId;
  final Value<DateTime> receivedAt;
  const ProductionReceiptsCompanion({
    this.id = const Value.absent(),
    this.productionOrderId = const Value.absent(),
    this.itemId = const Value.absent(),
    this.batchNo = const Value.absent(),
    this.qty = const Value.absent(),
    this.unit = const Value.absent(),
    this.overrunPercent = const Value.absent(),
    this.unitCost = const Value.absent(),
    this.mfgDate = const Value.absent(),
    this.expiryDate = const Value.absent(),
    this.warehouseId = const Value.absent(),
    this.receivedAt = const Value.absent(),
  });
  ProductionReceiptsCompanion.insert({
    this.id = const Value.absent(),
    required int productionOrderId,
    required int itemId,
    required String batchNo,
    required double qty,
    this.unit = const Value.absent(),
    this.overrunPercent = const Value.absent(),
    this.unitCost = const Value.absent(),
    this.mfgDate = const Value.absent(),
    this.expiryDate = const Value.absent(),
    this.warehouseId = const Value.absent(),
    this.receivedAt = const Value.absent(),
  })  : productionOrderId = Value(productionOrderId),
        itemId = Value(itemId),
        batchNo = Value(batchNo),
        qty = Value(qty);
  static Insertable<ProductionReceipt> custom({
    Expression<int>? id,
    Expression<int>? productionOrderId,
    Expression<int>? itemId,
    Expression<String>? batchNo,
    Expression<double>? qty,
    Expression<String>? unit,
    Expression<double>? overrunPercent,
    Expression<double>? unitCost,
    Expression<DateTime>? mfgDate,
    Expression<DateTime>? expiryDate,
    Expression<int>? warehouseId,
    Expression<DateTime>? receivedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (productionOrderId != null) 'production_order_id': productionOrderId,
      if (itemId != null) 'item_id': itemId,
      if (batchNo != null) 'batch_no': batchNo,
      if (qty != null) 'qty': qty,
      if (unit != null) 'unit': unit,
      if (overrunPercent != null) 'overrun_percent': overrunPercent,
      if (unitCost != null) 'unit_cost': unitCost,
      if (mfgDate != null) 'mfg_date': mfgDate,
      if (expiryDate != null) 'expiry_date': expiryDate,
      if (warehouseId != null) 'warehouse_id': warehouseId,
      if (receivedAt != null) 'received_at': receivedAt,
    });
  }

  ProductionReceiptsCompanion copyWith(
      {Value<int>? id,
      Value<int>? productionOrderId,
      Value<int>? itemId,
      Value<String>? batchNo,
      Value<double>? qty,
      Value<String?>? unit,
      Value<double?>? overrunPercent,
      Value<double?>? unitCost,
      Value<DateTime?>? mfgDate,
      Value<DateTime?>? expiryDate,
      Value<int?>? warehouseId,
      Value<DateTime>? receivedAt}) {
    return ProductionReceiptsCompanion(
      id: id ?? this.id,
      productionOrderId: productionOrderId ?? this.productionOrderId,
      itemId: itemId ?? this.itemId,
      batchNo: batchNo ?? this.batchNo,
      qty: qty ?? this.qty,
      unit: unit ?? this.unit,
      overrunPercent: overrunPercent ?? this.overrunPercent,
      unitCost: unitCost ?? this.unitCost,
      mfgDate: mfgDate ?? this.mfgDate,
      expiryDate: expiryDate ?? this.expiryDate,
      warehouseId: warehouseId ?? this.warehouseId,
      receivedAt: receivedAt ?? this.receivedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (productionOrderId.present) {
      map['production_order_id'] = Variable<int>(productionOrderId.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (batchNo.present) {
      map['batch_no'] = Variable<String>(batchNo.value);
    }
    if (qty.present) {
      map['qty'] = Variable<double>(qty.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    if (overrunPercent.present) {
      map['overrun_percent'] = Variable<double>(overrunPercent.value);
    }
    if (unitCost.present) {
      map['unit_cost'] = Variable<double>(unitCost.value);
    }
    if (mfgDate.present) {
      map['mfg_date'] = Variable<DateTime>(mfgDate.value);
    }
    if (expiryDate.present) {
      map['expiry_date'] = Variable<DateTime>(expiryDate.value);
    }
    if (warehouseId.present) {
      map['warehouse_id'] = Variable<int>(warehouseId.value);
    }
    if (receivedAt.present) {
      map['received_at'] = Variable<DateTime>(receivedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductionReceiptsCompanion(')
          ..write('id: $id, ')
          ..write('productionOrderId: $productionOrderId, ')
          ..write('itemId: $itemId, ')
          ..write('batchNo: $batchNo, ')
          ..write('qty: $qty, ')
          ..write('unit: $unit, ')
          ..write('overrunPercent: $overrunPercent, ')
          ..write('unitCost: $unitCost, ')
          ..write('mfgDate: $mfgDate, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('warehouseId: $warehouseId, ')
          ..write('receivedAt: $receivedAt')
          ..write(')'))
        .toString();
  }
}

class $VouchersTable extends Vouchers with TableInfo<$VouchersTable, Voucher> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VouchersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _voucherNoMeta =
      const VerificationMeta('voucherNo');
  @override
  late final GeneratedColumn<String> voucherNo = GeneratedColumn<String>(
      'voucher_no', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _voucherTypeMeta =
      const VerificationMeta('voucherType');
  @override
  late final GeneratedColumn<String> voucherType = GeneratedColumn<String>(
      'voucher_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _partyIdMeta =
      const VerificationMeta('partyId');
  @override
  late final GeneratedColumn<int> partyId = GeneratedColumn<int>(
      'party_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES parties (id)'));
  static const VerificationMeta _voucherDateMeta =
      const VerificationMeta('voucherDate');
  @override
  late final GeneratedColumn<DateTime> voucherDate = GeneratedColumn<DateTime>(
      'voucher_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _totalAmountMeta =
      const VerificationMeta('totalAmount');
  @override
  late final GeneratedColumn<double> totalAmount = GeneratedColumn<double>(
      'total_amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _narrationMeta =
      const VerificationMeta('narration');
  @override
  late final GeneratedColumn<String> narration = GeneratedColumn<String>(
      'narration', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        voucherNo,
        voucherType,
        partyId,
        voucherDate,
        totalAmount,
        narration,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'vouchers';
  @override
  VerificationContext validateIntegrity(Insertable<Voucher> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('voucher_no')) {
      context.handle(_voucherNoMeta,
          voucherNo.isAcceptableOrUnknown(data['voucher_no']!, _voucherNoMeta));
    } else if (isInserting) {
      context.missing(_voucherNoMeta);
    }
    if (data.containsKey('voucher_type')) {
      context.handle(
          _voucherTypeMeta,
          voucherType.isAcceptableOrUnknown(
              data['voucher_type']!, _voucherTypeMeta));
    } else if (isInserting) {
      context.missing(_voucherTypeMeta);
    }
    if (data.containsKey('party_id')) {
      context.handle(_partyIdMeta,
          partyId.isAcceptableOrUnknown(data['party_id']!, _partyIdMeta));
    }
    if (data.containsKey('voucher_date')) {
      context.handle(
          _voucherDateMeta,
          voucherDate.isAcceptableOrUnknown(
              data['voucher_date']!, _voucherDateMeta));
    } else if (isInserting) {
      context.missing(_voucherDateMeta);
    }
    if (data.containsKey('total_amount')) {
      context.handle(
          _totalAmountMeta,
          totalAmount.isAcceptableOrUnknown(
              data['total_amount']!, _totalAmountMeta));
    } else if (isInserting) {
      context.missing(_totalAmountMeta);
    }
    if (data.containsKey('narration')) {
      context.handle(_narrationMeta,
          narration.isAcceptableOrUnknown(data['narration']!, _narrationMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Voucher map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Voucher(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      voucherNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}voucher_no'])!,
      voucherType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}voucher_type'])!,
      partyId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}party_id']),
      voucherDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}voucher_date'])!,
      totalAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_amount'])!,
      narration: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}narration']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $VouchersTable createAlias(String alias) {
    return $VouchersTable(attachedDatabase, alias);
  }
}

class Voucher extends DataClass implements Insertable<Voucher> {
  final int id;
  final String voucherNo;
  final String voucherType;
  final int? partyId;
  final DateTime voucherDate;
  final double totalAmount;
  final String? narration;
  final DateTime createdAt;
  const Voucher(
      {required this.id,
      required this.voucherNo,
      required this.voucherType,
      this.partyId,
      required this.voucherDate,
      required this.totalAmount,
      this.narration,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['voucher_no'] = Variable<String>(voucherNo);
    map['voucher_type'] = Variable<String>(voucherType);
    if (!nullToAbsent || partyId != null) {
      map['party_id'] = Variable<int>(partyId);
    }
    map['voucher_date'] = Variable<DateTime>(voucherDate);
    map['total_amount'] = Variable<double>(totalAmount);
    if (!nullToAbsent || narration != null) {
      map['narration'] = Variable<String>(narration);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  VouchersCompanion toCompanion(bool nullToAbsent) {
    return VouchersCompanion(
      id: Value(id),
      voucherNo: Value(voucherNo),
      voucherType: Value(voucherType),
      partyId: partyId == null && nullToAbsent
          ? const Value.absent()
          : Value(partyId),
      voucherDate: Value(voucherDate),
      totalAmount: Value(totalAmount),
      narration: narration == null && nullToAbsent
          ? const Value.absent()
          : Value(narration),
      createdAt: Value(createdAt),
    );
  }

  factory Voucher.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Voucher(
      id: serializer.fromJson<int>(json['id']),
      voucherNo: serializer.fromJson<String>(json['voucherNo']),
      voucherType: serializer.fromJson<String>(json['voucherType']),
      partyId: serializer.fromJson<int?>(json['partyId']),
      voucherDate: serializer.fromJson<DateTime>(json['voucherDate']),
      totalAmount: serializer.fromJson<double>(json['totalAmount']),
      narration: serializer.fromJson<String?>(json['narration']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'voucherNo': serializer.toJson<String>(voucherNo),
      'voucherType': serializer.toJson<String>(voucherType),
      'partyId': serializer.toJson<int?>(partyId),
      'voucherDate': serializer.toJson<DateTime>(voucherDate),
      'totalAmount': serializer.toJson<double>(totalAmount),
      'narration': serializer.toJson<String?>(narration),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Voucher copyWith(
          {int? id,
          String? voucherNo,
          String? voucherType,
          Value<int?> partyId = const Value.absent(),
          DateTime? voucherDate,
          double? totalAmount,
          Value<String?> narration = const Value.absent(),
          DateTime? createdAt}) =>
      Voucher(
        id: id ?? this.id,
        voucherNo: voucherNo ?? this.voucherNo,
        voucherType: voucherType ?? this.voucherType,
        partyId: partyId.present ? partyId.value : this.partyId,
        voucherDate: voucherDate ?? this.voucherDate,
        totalAmount: totalAmount ?? this.totalAmount,
        narration: narration.present ? narration.value : this.narration,
        createdAt: createdAt ?? this.createdAt,
      );
  Voucher copyWithCompanion(VouchersCompanion data) {
    return Voucher(
      id: data.id.present ? data.id.value : this.id,
      voucherNo: data.voucherNo.present ? data.voucherNo.value : this.voucherNo,
      voucherType:
          data.voucherType.present ? data.voucherType.value : this.voucherType,
      partyId: data.partyId.present ? data.partyId.value : this.partyId,
      voucherDate:
          data.voucherDate.present ? data.voucherDate.value : this.voucherDate,
      totalAmount:
          data.totalAmount.present ? data.totalAmount.value : this.totalAmount,
      narration: data.narration.present ? data.narration.value : this.narration,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Voucher(')
          ..write('id: $id, ')
          ..write('voucherNo: $voucherNo, ')
          ..write('voucherType: $voucherType, ')
          ..write('partyId: $partyId, ')
          ..write('voucherDate: $voucherDate, ')
          ..write('totalAmount: $totalAmount, ')
          ..write('narration: $narration, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, voucherNo, voucherType, partyId,
      voucherDate, totalAmount, narration, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Voucher &&
          other.id == this.id &&
          other.voucherNo == this.voucherNo &&
          other.voucherType == this.voucherType &&
          other.partyId == this.partyId &&
          other.voucherDate == this.voucherDate &&
          other.totalAmount == this.totalAmount &&
          other.narration == this.narration &&
          other.createdAt == this.createdAt);
}

class VouchersCompanion extends UpdateCompanion<Voucher> {
  final Value<int> id;
  final Value<String> voucherNo;
  final Value<String> voucherType;
  final Value<int?> partyId;
  final Value<DateTime> voucherDate;
  final Value<double> totalAmount;
  final Value<String?> narration;
  final Value<DateTime> createdAt;
  const VouchersCompanion({
    this.id = const Value.absent(),
    this.voucherNo = const Value.absent(),
    this.voucherType = const Value.absent(),
    this.partyId = const Value.absent(),
    this.voucherDate = const Value.absent(),
    this.totalAmount = const Value.absent(),
    this.narration = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  VouchersCompanion.insert({
    this.id = const Value.absent(),
    required String voucherNo,
    required String voucherType,
    this.partyId = const Value.absent(),
    required DateTime voucherDate,
    required double totalAmount,
    this.narration = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : voucherNo = Value(voucherNo),
        voucherType = Value(voucherType),
        voucherDate = Value(voucherDate),
        totalAmount = Value(totalAmount);
  static Insertable<Voucher> custom({
    Expression<int>? id,
    Expression<String>? voucherNo,
    Expression<String>? voucherType,
    Expression<int>? partyId,
    Expression<DateTime>? voucherDate,
    Expression<double>? totalAmount,
    Expression<String>? narration,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (voucherNo != null) 'voucher_no': voucherNo,
      if (voucherType != null) 'voucher_type': voucherType,
      if (partyId != null) 'party_id': partyId,
      if (voucherDate != null) 'voucher_date': voucherDate,
      if (totalAmount != null) 'total_amount': totalAmount,
      if (narration != null) 'narration': narration,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  VouchersCompanion copyWith(
      {Value<int>? id,
      Value<String>? voucherNo,
      Value<String>? voucherType,
      Value<int?>? partyId,
      Value<DateTime>? voucherDate,
      Value<double>? totalAmount,
      Value<String?>? narration,
      Value<DateTime>? createdAt}) {
    return VouchersCompanion(
      id: id ?? this.id,
      voucherNo: voucherNo ?? this.voucherNo,
      voucherType: voucherType ?? this.voucherType,
      partyId: partyId ?? this.partyId,
      voucherDate: voucherDate ?? this.voucherDate,
      totalAmount: totalAmount ?? this.totalAmount,
      narration: narration ?? this.narration,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (voucherNo.present) {
      map['voucher_no'] = Variable<String>(voucherNo.value);
    }
    if (voucherType.present) {
      map['voucher_type'] = Variable<String>(voucherType.value);
    }
    if (partyId.present) {
      map['party_id'] = Variable<int>(partyId.value);
    }
    if (voucherDate.present) {
      map['voucher_date'] = Variable<DateTime>(voucherDate.value);
    }
    if (totalAmount.present) {
      map['total_amount'] = Variable<double>(totalAmount.value);
    }
    if (narration.present) {
      map['narration'] = Variable<String>(narration.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VouchersCompanion(')
          ..write('id: $id, ')
          ..write('voucherNo: $voucherNo, ')
          ..write('voucherType: $voucherType, ')
          ..write('partyId: $partyId, ')
          ..write('voucherDate: $voucherDate, ')
          ..write('totalAmount: $totalAmount, ')
          ..write('narration: $narration, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $VoucherLinesTable extends VoucherLines
    with TableInfo<$VoucherLinesTable, VoucherLine> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VoucherLinesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _voucherIdMeta =
      const VerificationMeta('voucherId');
  @override
  late final GeneratedColumn<int> voucherId = GeneratedColumn<int>(
      'voucher_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES vouchers (id)'));
  static const VerificationMeta _ledgerNameMeta =
      const VerificationMeta('ledgerName');
  @override
  late final GeneratedColumn<String> ledgerName = GeneratedColumn<String>(
      'ledger_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _debitMeta = const VerificationMeta('debit');
  @override
  late final GeneratedColumn<double> debit = GeneratedColumn<double>(
      'debit', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _creditMeta = const VerificationMeta('credit');
  @override
  late final GeneratedColumn<double> credit = GeneratedColumn<double>(
      'credit', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  @override
  List<GeneratedColumn> get $columns =>
      [id, voucherId, ledgerName, debit, credit];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'voucher_lines';
  @override
  VerificationContext validateIntegrity(Insertable<VoucherLine> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('voucher_id')) {
      context.handle(_voucherIdMeta,
          voucherId.isAcceptableOrUnknown(data['voucher_id']!, _voucherIdMeta));
    } else if (isInserting) {
      context.missing(_voucherIdMeta);
    }
    if (data.containsKey('ledger_name')) {
      context.handle(
          _ledgerNameMeta,
          ledgerName.isAcceptableOrUnknown(
              data['ledger_name']!, _ledgerNameMeta));
    } else if (isInserting) {
      context.missing(_ledgerNameMeta);
    }
    if (data.containsKey('debit')) {
      context.handle(
          _debitMeta, debit.isAcceptableOrUnknown(data['debit']!, _debitMeta));
    }
    if (data.containsKey('credit')) {
      context.handle(_creditMeta,
          credit.isAcceptableOrUnknown(data['credit']!, _creditMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  VoucherLine map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return VoucherLine(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      voucherId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}voucher_id'])!,
      ledgerName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ledger_name'])!,
      debit: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}debit'])!,
      credit: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}credit'])!,
    );
  }

  @override
  $VoucherLinesTable createAlias(String alias) {
    return $VoucherLinesTable(attachedDatabase, alias);
  }
}

class VoucherLine extends DataClass implements Insertable<VoucherLine> {
  final int id;
  final int voucherId;
  final String ledgerName;
  final double debit;
  final double credit;
  const VoucherLine(
      {required this.id,
      required this.voucherId,
      required this.ledgerName,
      required this.debit,
      required this.credit});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['voucher_id'] = Variable<int>(voucherId);
    map['ledger_name'] = Variable<String>(ledgerName);
    map['debit'] = Variable<double>(debit);
    map['credit'] = Variable<double>(credit);
    return map;
  }

  VoucherLinesCompanion toCompanion(bool nullToAbsent) {
    return VoucherLinesCompanion(
      id: Value(id),
      voucherId: Value(voucherId),
      ledgerName: Value(ledgerName),
      debit: Value(debit),
      credit: Value(credit),
    );
  }

  factory VoucherLine.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VoucherLine(
      id: serializer.fromJson<int>(json['id']),
      voucherId: serializer.fromJson<int>(json['voucherId']),
      ledgerName: serializer.fromJson<String>(json['ledgerName']),
      debit: serializer.fromJson<double>(json['debit']),
      credit: serializer.fromJson<double>(json['credit']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'voucherId': serializer.toJson<int>(voucherId),
      'ledgerName': serializer.toJson<String>(ledgerName),
      'debit': serializer.toJson<double>(debit),
      'credit': serializer.toJson<double>(credit),
    };
  }

  VoucherLine copyWith(
          {int? id,
          int? voucherId,
          String? ledgerName,
          double? debit,
          double? credit}) =>
      VoucherLine(
        id: id ?? this.id,
        voucherId: voucherId ?? this.voucherId,
        ledgerName: ledgerName ?? this.ledgerName,
        debit: debit ?? this.debit,
        credit: credit ?? this.credit,
      );
  VoucherLine copyWithCompanion(VoucherLinesCompanion data) {
    return VoucherLine(
      id: data.id.present ? data.id.value : this.id,
      voucherId: data.voucherId.present ? data.voucherId.value : this.voucherId,
      ledgerName:
          data.ledgerName.present ? data.ledgerName.value : this.ledgerName,
      debit: data.debit.present ? data.debit.value : this.debit,
      credit: data.credit.present ? data.credit.value : this.credit,
    );
  }

  @override
  String toString() {
    return (StringBuffer('VoucherLine(')
          ..write('id: $id, ')
          ..write('voucherId: $voucherId, ')
          ..write('ledgerName: $ledgerName, ')
          ..write('debit: $debit, ')
          ..write('credit: $credit')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, voucherId, ledgerName, debit, credit);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VoucherLine &&
          other.id == this.id &&
          other.voucherId == this.voucherId &&
          other.ledgerName == this.ledgerName &&
          other.debit == this.debit &&
          other.credit == this.credit);
}

class VoucherLinesCompanion extends UpdateCompanion<VoucherLine> {
  final Value<int> id;
  final Value<int> voucherId;
  final Value<String> ledgerName;
  final Value<double> debit;
  final Value<double> credit;
  const VoucherLinesCompanion({
    this.id = const Value.absent(),
    this.voucherId = const Value.absent(),
    this.ledgerName = const Value.absent(),
    this.debit = const Value.absent(),
    this.credit = const Value.absent(),
  });
  VoucherLinesCompanion.insert({
    this.id = const Value.absent(),
    required int voucherId,
    required String ledgerName,
    this.debit = const Value.absent(),
    this.credit = const Value.absent(),
  })  : voucherId = Value(voucherId),
        ledgerName = Value(ledgerName);
  static Insertable<VoucherLine> custom({
    Expression<int>? id,
    Expression<int>? voucherId,
    Expression<String>? ledgerName,
    Expression<double>? debit,
    Expression<double>? credit,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (voucherId != null) 'voucher_id': voucherId,
      if (ledgerName != null) 'ledger_name': ledgerName,
      if (debit != null) 'debit': debit,
      if (credit != null) 'credit': credit,
    });
  }

  VoucherLinesCompanion copyWith(
      {Value<int>? id,
      Value<int>? voucherId,
      Value<String>? ledgerName,
      Value<double>? debit,
      Value<double>? credit}) {
    return VoucherLinesCompanion(
      id: id ?? this.id,
      voucherId: voucherId ?? this.voucherId,
      ledgerName: ledgerName ?? this.ledgerName,
      debit: debit ?? this.debit,
      credit: credit ?? this.credit,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (voucherId.present) {
      map['voucher_id'] = Variable<int>(voucherId.value);
    }
    if (ledgerName.present) {
      map['ledger_name'] = Variable<String>(ledgerName.value);
    }
    if (debit.present) {
      map['debit'] = Variable<double>(debit.value);
    }
    if (credit.present) {
      map['credit'] = Variable<double>(credit.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VoucherLinesCompanion(')
          ..write('id: $id, ')
          ..write('voucherId: $voucherId, ')
          ..write('ledgerName: $ledgerName, ')
          ..write('debit: $debit, ')
          ..write('credit: $credit')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ItemsTable items = $ItemsTable(this);
  late final $UnitsTable units = $UnitsTable(this);
  late final $UnitConversionsTable unitConversions =
      $UnitConversionsTable(this);
  late final $WarehousesTable warehouses = $WarehousesTable(this);
  late final $TanksTable tanks = $TanksTable(this);
  late final $PartiesTable parties = $PartiesTable(this);
  late final $RecipesTable recipes = $RecipesTable(this);
  late final $RecipeLinesTable recipeLines = $RecipeLinesTable(this);
  late final $BatchesTable batches = $BatchesTable(this);
  late final $StockLedgerTable stockLedger = $StockLedgerTable(this);
  late final $ProductionOrdersTable productionOrders =
      $ProductionOrdersTable(this);
  late final $ProductionIssuesTable productionIssues =
      $ProductionIssuesTable(this);
  late final $ProductionReceiptsTable productionReceipts =
      $ProductionReceiptsTable(this);
  late final $VouchersTable vouchers = $VouchersTable(this);
  late final $VoucherLinesTable voucherLines = $VoucherLinesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        items,
        units,
        unitConversions,
        warehouses,
        tanks,
        parties,
        recipes,
        recipeLines,
        batches,
        stockLedger,
        productionOrders,
        productionIssues,
        productionReceipts,
        vouchers,
        voucherLines
      ];
}

typedef $$ItemsTableCreateCompanionBuilder = ItemsCompanion Function({
  Value<int> id,
  required String itemCode,
  required String itemName,
  required String itemType,
  required String baseUnit,
  Value<bool> trackBatch,
  Value<bool> trackExpiry,
  Value<bool> isTankItem,
  Value<double> standardCost,
  Value<double> salesPrice,
  Value<double> minStock,
  Value<bool> isActive,
  Value<DateTime> createdAt,
});
typedef $$ItemsTableUpdateCompanionBuilder = ItemsCompanion Function({
  Value<int> id,
  Value<String> itemCode,
  Value<String> itemName,
  Value<String> itemType,
  Value<String> baseUnit,
  Value<bool> trackBatch,
  Value<bool> trackExpiry,
  Value<bool> isTankItem,
  Value<double> standardCost,
  Value<double> salesPrice,
  Value<double> minStock,
  Value<bool> isActive,
  Value<DateTime> createdAt,
});

final class $$ItemsTableReferences
    extends BaseReferences<_$AppDatabase, $ItemsTable, Item> {
  $$ItemsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$UnitConversionsTable, List<UnitConversion>>
      _unitConversionsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.unitConversions,
              aliasName: 'items__id__unit_conversions__item_id');

  $$UnitConversionsTableProcessedTableManager get unitConversionsRefs {
    final manager =
        $$UnitConversionsTableTableManager($_db, $_db.unitConversions)
            .filter((f) => f.itemId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_unitConversionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$TanksTable, List<Tank>> _tanksRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.tanks,
          aliasName: 'items__id__tanks__current_item_id');

  $$TanksTableProcessedTableManager get tanksRefs {
    final manager = $$TanksTableTableManager($_db, $_db.tanks)
        .filter((f) => f.currentItemId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_tanksRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$RecipesTable, List<Recipe>> _recipesRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.recipes,
          aliasName: 'items__id__recipes__finished_item_id');

  $$RecipesTableProcessedTableManager get recipesRefs {
    final manager = $$RecipesTableTableManager($_db, $_db.recipes)
        .filter((f) => f.finishedItemId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_recipesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$RecipeLinesTable, List<RecipeLine>>
      _recipeLinesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.recipeLines,
              aliasName: 'items__id__recipe_lines__item_id');

  $$RecipeLinesTableProcessedTableManager get recipeLinesRefs {
    final manager = $$RecipeLinesTableTableManager($_db, $_db.recipeLines)
        .filter((f) => f.itemId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_recipeLinesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$BatchesTable, List<Batche>> _batchesRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.batches,
          aliasName: 'items__id__batches__item_id');

  $$BatchesTableProcessedTableManager get batchesRefs {
    final manager = $$BatchesTableTableManager($_db, $_db.batches)
        .filter((f) => f.itemId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_batchesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$StockLedgerTable, List<StockLedgerData>>
      _stockLedgerRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.stockLedger,
              aliasName: 'items__id__stock_ledger__item_id');

  $$StockLedgerTableProcessedTableManager get stockLedgerRefs {
    final manager = $$StockLedgerTableTableManager($_db, $_db.stockLedger)
        .filter((f) => f.itemId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_stockLedgerRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ProductionIssuesTable, List<ProductionIssue>>
      _productionIssuesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.productionIssues,
              aliasName: 'items__id__production_issues__item_id');

  $$ProductionIssuesTableProcessedTableManager get productionIssuesRefs {
    final manager =
        $$ProductionIssuesTableTableManager($_db, $_db.productionIssues)
            .filter((f) => f.itemId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_productionIssuesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ProductionReceiptsTable, List<ProductionReceipt>>
      _productionReceiptsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.productionReceipts,
              aliasName: 'items__id__production_receipts__item_id');

  $$ProductionReceiptsTableProcessedTableManager get productionReceiptsRefs {
    final manager =
        $$ProductionReceiptsTableTableManager($_db, $_db.productionReceipts)
            .filter((f) => f.itemId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_productionReceiptsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ItemsTableFilterComposer extends Composer<_$AppDatabase, $ItemsTable> {
  $$ItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get itemCode => $composableBuilder(
      column: $table.itemCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get itemName => $composableBuilder(
      column: $table.itemName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get itemType => $composableBuilder(
      column: $table.itemType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get baseUnit => $composableBuilder(
      column: $table.baseUnit, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get trackBatch => $composableBuilder(
      column: $table.trackBatch, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get trackExpiry => $composableBuilder(
      column: $table.trackExpiry, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isTankItem => $composableBuilder(
      column: $table.isTankItem, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get standardCost => $composableBuilder(
      column: $table.standardCost, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get salesPrice => $composableBuilder(
      column: $table.salesPrice, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get minStock => $composableBuilder(
      column: $table.minStock, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  Expression<bool> unitConversionsRefs(
      Expression<bool> Function($$UnitConversionsTableFilterComposer f) f) {
    final $$UnitConversionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.unitConversions,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UnitConversionsTableFilterComposer(
              $db: $db,
              $table: $db.unitConversions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> tanksRefs(
      Expression<bool> Function($$TanksTableFilterComposer f) f) {
    final $$TanksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.tanks,
        getReferencedColumn: (t) => t.currentItemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TanksTableFilterComposer(
              $db: $db,
              $table: $db.tanks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> recipesRefs(
      Expression<bool> Function($$RecipesTableFilterComposer f) f) {
    final $$RecipesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.recipes,
        getReferencedColumn: (t) => t.finishedItemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RecipesTableFilterComposer(
              $db: $db,
              $table: $db.recipes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> recipeLinesRefs(
      Expression<bool> Function($$RecipeLinesTableFilterComposer f) f) {
    final $$RecipeLinesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.recipeLines,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RecipeLinesTableFilterComposer(
              $db: $db,
              $table: $db.recipeLines,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> batchesRefs(
      Expression<bool> Function($$BatchesTableFilterComposer f) f) {
    final $$BatchesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.batches,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BatchesTableFilterComposer(
              $db: $db,
              $table: $db.batches,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> stockLedgerRefs(
      Expression<bool> Function($$StockLedgerTableFilterComposer f) f) {
    final $$StockLedgerTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stockLedger,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StockLedgerTableFilterComposer(
              $db: $db,
              $table: $db.stockLedger,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> productionIssuesRefs(
      Expression<bool> Function($$ProductionIssuesTableFilterComposer f) f) {
    final $$ProductionIssuesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.productionIssues,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionIssuesTableFilterComposer(
              $db: $db,
              $table: $db.productionIssues,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> productionReceiptsRefs(
      Expression<bool> Function($$ProductionReceiptsTableFilterComposer f) f) {
    final $$ProductionReceiptsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.productionReceipts,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionReceiptsTableFilterComposer(
              $db: $db,
              $table: $db.productionReceipts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemsTable> {
  $$ItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get itemCode => $composableBuilder(
      column: $table.itemCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get itemName => $composableBuilder(
      column: $table.itemName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get itemType => $composableBuilder(
      column: $table.itemType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get baseUnit => $composableBuilder(
      column: $table.baseUnit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get trackBatch => $composableBuilder(
      column: $table.trackBatch, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get trackExpiry => $composableBuilder(
      column: $table.trackExpiry, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isTankItem => $composableBuilder(
      column: $table.isTankItem, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get standardCost => $composableBuilder(
      column: $table.standardCost,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get salesPrice => $composableBuilder(
      column: $table.salesPrice, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get minStock => $composableBuilder(
      column: $table.minStock, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$ItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemsTable> {
  $$ItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get itemCode =>
      $composableBuilder(column: $table.itemCode, builder: (column) => column);

  GeneratedColumn<String> get itemName =>
      $composableBuilder(column: $table.itemName, builder: (column) => column);

  GeneratedColumn<String> get itemType =>
      $composableBuilder(column: $table.itemType, builder: (column) => column);

  GeneratedColumn<String> get baseUnit =>
      $composableBuilder(column: $table.baseUnit, builder: (column) => column);

  GeneratedColumn<bool> get trackBatch => $composableBuilder(
      column: $table.trackBatch, builder: (column) => column);

  GeneratedColumn<bool> get trackExpiry => $composableBuilder(
      column: $table.trackExpiry, builder: (column) => column);

  GeneratedColumn<bool> get isTankItem => $composableBuilder(
      column: $table.isTankItem, builder: (column) => column);

  GeneratedColumn<double> get standardCost => $composableBuilder(
      column: $table.standardCost, builder: (column) => column);

  GeneratedColumn<double> get salesPrice => $composableBuilder(
      column: $table.salesPrice, builder: (column) => column);

  GeneratedColumn<double> get minStock =>
      $composableBuilder(column: $table.minStock, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> unitConversionsRefs<T extends Object>(
      Expression<T> Function($$UnitConversionsTableAnnotationComposer a) f) {
    final $$UnitConversionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.unitConversions,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UnitConversionsTableAnnotationComposer(
              $db: $db,
              $table: $db.unitConversions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> tanksRefs<T extends Object>(
      Expression<T> Function($$TanksTableAnnotationComposer a) f) {
    final $$TanksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.tanks,
        getReferencedColumn: (t) => t.currentItemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TanksTableAnnotationComposer(
              $db: $db,
              $table: $db.tanks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> recipesRefs<T extends Object>(
      Expression<T> Function($$RecipesTableAnnotationComposer a) f) {
    final $$RecipesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.recipes,
        getReferencedColumn: (t) => t.finishedItemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RecipesTableAnnotationComposer(
              $db: $db,
              $table: $db.recipes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> recipeLinesRefs<T extends Object>(
      Expression<T> Function($$RecipeLinesTableAnnotationComposer a) f) {
    final $$RecipeLinesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.recipeLines,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RecipeLinesTableAnnotationComposer(
              $db: $db,
              $table: $db.recipeLines,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> batchesRefs<T extends Object>(
      Expression<T> Function($$BatchesTableAnnotationComposer a) f) {
    final $$BatchesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.batches,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BatchesTableAnnotationComposer(
              $db: $db,
              $table: $db.batches,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> stockLedgerRefs<T extends Object>(
      Expression<T> Function($$StockLedgerTableAnnotationComposer a) f) {
    final $$StockLedgerTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stockLedger,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StockLedgerTableAnnotationComposer(
              $db: $db,
              $table: $db.stockLedger,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> productionIssuesRefs<T extends Object>(
      Expression<T> Function($$ProductionIssuesTableAnnotationComposer a) f) {
    final $$ProductionIssuesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.productionIssues,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionIssuesTableAnnotationComposer(
              $db: $db,
              $table: $db.productionIssues,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> productionReceiptsRefs<T extends Object>(
      Expression<T> Function($$ProductionReceiptsTableAnnotationComposer a) f) {
    final $$ProductionReceiptsTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.productionReceipts,
            getReferencedColumn: (t) => t.itemId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$ProductionReceiptsTableAnnotationComposer(
                  $db: $db,
                  $table: $db.productionReceipts,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$ItemsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItemsTable,
    Item,
    $$ItemsTableFilterComposer,
    $$ItemsTableOrderingComposer,
    $$ItemsTableAnnotationComposer,
    $$ItemsTableCreateCompanionBuilder,
    $$ItemsTableUpdateCompanionBuilder,
    (Item, $$ItemsTableReferences),
    Item,
    PrefetchHooks Function(
        {bool unitConversionsRefs,
        bool tanksRefs,
        bool recipesRefs,
        bool recipeLinesRefs,
        bool batchesRefs,
        bool stockLedgerRefs,
        bool productionIssuesRefs,
        bool productionReceiptsRefs})> {
  $$ItemsTableTableManager(_$AppDatabase db, $ItemsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> itemCode = const Value.absent(),
            Value<String> itemName = const Value.absent(),
            Value<String> itemType = const Value.absent(),
            Value<String> baseUnit = const Value.absent(),
            Value<bool> trackBatch = const Value.absent(),
            Value<bool> trackExpiry = const Value.absent(),
            Value<bool> isTankItem = const Value.absent(),
            Value<double> standardCost = const Value.absent(),
            Value<double> salesPrice = const Value.absent(),
            Value<double> minStock = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              ItemsCompanion(
            id: id,
            itemCode: itemCode,
            itemName: itemName,
            itemType: itemType,
            baseUnit: baseUnit,
            trackBatch: trackBatch,
            trackExpiry: trackExpiry,
            isTankItem: isTankItem,
            standardCost: standardCost,
            salesPrice: salesPrice,
            minStock: minStock,
            isActive: isActive,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String itemCode,
            required String itemName,
            required String itemType,
            required String baseUnit,
            Value<bool> trackBatch = const Value.absent(),
            Value<bool> trackExpiry = const Value.absent(),
            Value<bool> isTankItem = const Value.absent(),
            Value<double> standardCost = const Value.absent(),
            Value<double> salesPrice = const Value.absent(),
            Value<double> minStock = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              ItemsCompanion.insert(
            id: id,
            itemCode: itemCode,
            itemName: itemName,
            itemType: itemType,
            baseUnit: baseUnit,
            trackBatch: trackBatch,
            trackExpiry: trackExpiry,
            isTankItem: isTankItem,
            standardCost: standardCost,
            salesPrice: salesPrice,
            minStock: minStock,
            isActive: isActive,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$ItemsTable, Item>(table),
                    $$ItemsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {unitConversionsRefs = false,
              tanksRefs = false,
              recipesRefs = false,
              recipeLinesRefs = false,
              batchesRefs = false,
              stockLedgerRefs = false,
              productionIssuesRefs = false,
              productionReceiptsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (unitConversionsRefs) db.unitConversions,
                if (tanksRefs) db.tanks,
                if (recipesRefs) db.recipes,
                if (recipeLinesRefs) db.recipeLines,
                if (batchesRefs) db.batches,
                if (stockLedgerRefs) db.stockLedger,
                if (productionIssuesRefs) db.productionIssues,
                if (productionReceiptsRefs) db.productionReceipts
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (unitConversionsRefs)
                    await $_getPrefetchedDataByColumns<Item, $ItemsTable,
                            UnitConversion, $UnitConversionsTable>(
                        currentTable: table,
                        referencedTable: $$ItemsTableReferences
                            ._unitConversionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ItemsTableReferences(db, table, p0)
                                .unitConversionsRefs,
                        currentColumn: 'id',
                        referencedColumn: 'item_id',
                        typedResults: items),
                  if (tanksRefs)
                    await $_getPrefetchedDataByColumns<Item, $ItemsTable, Tank,
                            $TanksTable>(
                        currentTable: table,
                        referencedTable:
                            $$ItemsTableReferences._tanksRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ItemsTableReferences(db, table, p0).tanksRefs,
                        currentColumn: 'id',
                        referencedColumn: 'current_item_id',
                        typedResults: items),
                  if (recipesRefs)
                    await $_getPrefetchedDataByColumns<Item, $ItemsTable,
                            Recipe, $RecipesTable>(
                        currentTable: table,
                        referencedTable:
                            $$ItemsTableReferences._recipesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ItemsTableReferences(db, table, p0).recipesRefs,
                        currentColumn: 'id',
                        referencedColumn: 'finished_item_id',
                        typedResults: items),
                  if (recipeLinesRefs)
                    await $_getPrefetchedDataByColumns<Item, $ItemsTable,
                            RecipeLine, $RecipeLinesTable>(
                        currentTable: table,
                        referencedTable:
                            $$ItemsTableReferences._recipeLinesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ItemsTableReferences(db, table, p0)
                                .recipeLinesRefs,
                        currentColumn: 'id',
                        referencedColumn: 'item_id',
                        typedResults: items),
                  if (batchesRefs)
                    await $_getPrefetchedDataByColumns<Item, $ItemsTable,
                            Batche, $BatchesTable>(
                        currentTable: table,
                        referencedTable:
                            $$ItemsTableReferences._batchesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ItemsTableReferences(db, table, p0).batchesRefs,
                        currentColumn: 'id',
                        referencedColumn: 'item_id',
                        typedResults: items),
                  if (stockLedgerRefs)
                    await $_getPrefetchedDataByColumns<Item, $ItemsTable,
                            StockLedgerData, $StockLedgerTable>(
                        currentTable: table,
                        referencedTable:
                            $$ItemsTableReferences._stockLedgerRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ItemsTableReferences(db, table, p0)
                                .stockLedgerRefs,
                        currentColumn: 'id',
                        referencedColumn: 'item_id',
                        typedResults: items),
                  if (productionIssuesRefs)
                    await $_getPrefetchedDataByColumns<Item, $ItemsTable,
                            ProductionIssue, $ProductionIssuesTable>(
                        currentTable: table,
                        referencedTable: $$ItemsTableReferences
                            ._productionIssuesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ItemsTableReferences(db, table, p0)
                                .productionIssuesRefs,
                        currentColumn: 'id',
                        referencedColumn: 'item_id',
                        typedResults: items),
                  if (productionReceiptsRefs)
                    await $_getPrefetchedDataByColumns<Item, $ItemsTable,
                            ProductionReceipt, $ProductionReceiptsTable>(
                        currentTable: table,
                        referencedTable: $$ItemsTableReferences
                            ._productionReceiptsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ItemsTableReferences(db, table, p0)
                                .productionReceiptsRefs,
                        currentColumn: 'id',
                        referencedColumn: 'item_id',
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ItemsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ItemsTable,
    Item,
    $$ItemsTableFilterComposer,
    $$ItemsTableOrderingComposer,
    $$ItemsTableAnnotationComposer,
    $$ItemsTableCreateCompanionBuilder,
    $$ItemsTableUpdateCompanionBuilder,
    (Item, $$ItemsTableReferences),
    Item,
    PrefetchHooks Function(
        {bool unitConversionsRefs,
        bool tanksRefs,
        bool recipesRefs,
        bool recipeLinesRefs,
        bool batchesRefs,
        bool stockLedgerRefs,
        bool productionIssuesRefs,
        bool productionReceiptsRefs})>;
typedef $$UnitsTableCreateCompanionBuilder = UnitsCompanion Function({
  Value<int> id,
  required String unitCode,
  required String unitName,
});
typedef $$UnitsTableUpdateCompanionBuilder = UnitsCompanion Function({
  Value<int> id,
  Value<String> unitCode,
  Value<String> unitName,
});

class $$UnitsTableFilterComposer extends Composer<_$AppDatabase, $UnitsTable> {
  $$UnitsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get unitCode => $composableBuilder(
      column: $table.unitCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get unitName => $composableBuilder(
      column: $table.unitName, builder: (column) => ColumnFilters(column));
}

class $$UnitsTableOrderingComposer
    extends Composer<_$AppDatabase, $UnitsTable> {
  $$UnitsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get unitCode => $composableBuilder(
      column: $table.unitCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get unitName => $composableBuilder(
      column: $table.unitName, builder: (column) => ColumnOrderings(column));
}

class $$UnitsTableAnnotationComposer
    extends Composer<_$AppDatabase, $UnitsTable> {
  $$UnitsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get unitCode =>
      $composableBuilder(column: $table.unitCode, builder: (column) => column);

  GeneratedColumn<String> get unitName =>
      $composableBuilder(column: $table.unitName, builder: (column) => column);
}

class $$UnitsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UnitsTable,
    Unit,
    $$UnitsTableFilterComposer,
    $$UnitsTableOrderingComposer,
    $$UnitsTableAnnotationComposer,
    $$UnitsTableCreateCompanionBuilder,
    $$UnitsTableUpdateCompanionBuilder,
    (Unit, BaseReferences<_$AppDatabase, $UnitsTable, Unit>),
    Unit,
    PrefetchHooks Function()> {
  $$UnitsTableTableManager(_$AppDatabase db, $UnitsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UnitsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UnitsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UnitsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> unitCode = const Value.absent(),
            Value<String> unitName = const Value.absent(),
          }) =>
              UnitsCompanion(
            id: id,
            unitCode: unitCode,
            unitName: unitName,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String unitCode,
            required String unitName,
          }) =>
              UnitsCompanion.insert(
            id: id,
            unitCode: unitCode,
            unitName: unitName,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$UnitsTable, Unit>(table),
                    BaseReferences<_$AppDatabase, $UnitsTable, Unit>(
                        db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UnitsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UnitsTable,
    Unit,
    $$UnitsTableFilterComposer,
    $$UnitsTableOrderingComposer,
    $$UnitsTableAnnotationComposer,
    $$UnitsTableCreateCompanionBuilder,
    $$UnitsTableUpdateCompanionBuilder,
    (Unit, BaseReferences<_$AppDatabase, $UnitsTable, Unit>),
    Unit,
    PrefetchHooks Function()>;
typedef $$UnitConversionsTableCreateCompanionBuilder = UnitConversionsCompanion
    Function({
  Value<int> id,
  required int itemId,
  required String fromUnit,
  required String toUnit,
  required double conversionFactor,
});
typedef $$UnitConversionsTableUpdateCompanionBuilder = UnitConversionsCompanion
    Function({
  Value<int> id,
  Value<int> itemId,
  Value<String> fromUnit,
  Value<String> toUnit,
  Value<double> conversionFactor,
});

final class $$UnitConversionsTableReferences extends BaseReferences<
    _$AppDatabase, $UnitConversionsTable, UnitConversion> {
  $$UnitConversionsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ItemsTable _itemIdTable(_$AppDatabase db) =>
      db.items.createAlias('unit_conversions__item_id__items__id');

  $$ItemsTableProcessedTableManager get itemId {
    final $_column = $_itemColumn<int>('item_id')!;

    final manager = $$ItemsTableTableManager($_db, $_db.items)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$UnitConversionsTableFilterComposer
    extends Composer<_$AppDatabase, $UnitConversionsTable> {
  $$UnitConversionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fromUnit => $composableBuilder(
      column: $table.fromUnit, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get toUnit => $composableBuilder(
      column: $table.toUnit, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get conversionFactor => $composableBuilder(
      column: $table.conversionFactor,
      builder: (column) => ColumnFilters(column));

  $$ItemsTableFilterComposer get itemId {
    final $$ItemsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableFilterComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$UnitConversionsTableOrderingComposer
    extends Composer<_$AppDatabase, $UnitConversionsTable> {
  $$UnitConversionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fromUnit => $composableBuilder(
      column: $table.fromUnit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get toUnit => $composableBuilder(
      column: $table.toUnit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get conversionFactor => $composableBuilder(
      column: $table.conversionFactor,
      builder: (column) => ColumnOrderings(column));

  $$ItemsTableOrderingComposer get itemId {
    final $$ItemsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableOrderingComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$UnitConversionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $UnitConversionsTable> {
  $$UnitConversionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get fromUnit =>
      $composableBuilder(column: $table.fromUnit, builder: (column) => column);

  GeneratedColumn<String> get toUnit =>
      $composableBuilder(column: $table.toUnit, builder: (column) => column);

  GeneratedColumn<double> get conversionFactor => $composableBuilder(
      column: $table.conversionFactor, builder: (column) => column);

  $$ItemsTableAnnotationComposer get itemId {
    final $$ItemsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableAnnotationComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$UnitConversionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UnitConversionsTable,
    UnitConversion,
    $$UnitConversionsTableFilterComposer,
    $$UnitConversionsTableOrderingComposer,
    $$UnitConversionsTableAnnotationComposer,
    $$UnitConversionsTableCreateCompanionBuilder,
    $$UnitConversionsTableUpdateCompanionBuilder,
    (UnitConversion, $$UnitConversionsTableReferences),
    UnitConversion,
    PrefetchHooks Function({bool itemId})> {
  $$UnitConversionsTableTableManager(
      _$AppDatabase db, $UnitConversionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UnitConversionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UnitConversionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UnitConversionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> itemId = const Value.absent(),
            Value<String> fromUnit = const Value.absent(),
            Value<String> toUnit = const Value.absent(),
            Value<double> conversionFactor = const Value.absent(),
          }) =>
              UnitConversionsCompanion(
            id: id,
            itemId: itemId,
            fromUnit: fromUnit,
            toUnit: toUnit,
            conversionFactor: conversionFactor,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int itemId,
            required String fromUnit,
            required String toUnit,
            required double conversionFactor,
          }) =>
              UnitConversionsCompanion.insert(
            id: id,
            itemId: itemId,
            fromUnit: fromUnit,
            toUnit: toUnit,
            conversionFactor: conversionFactor,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$UnitConversionsTable, UnitConversion>(table),
                    $$UnitConversionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({itemId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (itemId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.itemId,
                    referencedTable:
                        $$UnitConversionsTableReferences._itemIdTable(db),
                    referencedColumn:
                        $$UnitConversionsTableReferences._itemIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$UnitConversionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UnitConversionsTable,
    UnitConversion,
    $$UnitConversionsTableFilterComposer,
    $$UnitConversionsTableOrderingComposer,
    $$UnitConversionsTableAnnotationComposer,
    $$UnitConversionsTableCreateCompanionBuilder,
    $$UnitConversionsTableUpdateCompanionBuilder,
    (UnitConversion, $$UnitConversionsTableReferences),
    UnitConversion,
    PrefetchHooks Function({bool itemId})>;
typedef $$WarehousesTableCreateCompanionBuilder = WarehousesCompanion Function({
  Value<int> id,
  required String warehouseCode,
  required String warehouseName,
  Value<bool> isDefault,
});
typedef $$WarehousesTableUpdateCompanionBuilder = WarehousesCompanion Function({
  Value<int> id,
  Value<String> warehouseCode,
  Value<String> warehouseName,
  Value<bool> isDefault,
});

final class $$WarehousesTableReferences
    extends BaseReferences<_$AppDatabase, $WarehousesTable, Warehouse> {
  $$WarehousesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TanksTable, List<Tank>> _tanksRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.tanks,
          aliasName: 'warehouses__id__tanks__warehouse_id');

  $$TanksTableProcessedTableManager get tanksRefs {
    final manager = $$TanksTableTableManager($_db, $_db.tanks)
        .filter((f) => f.warehouseId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_tanksRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$BatchesTable, List<Batche>> _batchesRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.batches,
          aliasName: 'warehouses__id__batches__warehouse_id');

  $$BatchesTableProcessedTableManager get batchesRefs {
    final manager = $$BatchesTableTableManager($_db, $_db.batches)
        .filter((f) => f.warehouseId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_batchesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$StockLedgerTable, List<StockLedgerData>>
      _stockLedgerRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.stockLedger,
              aliasName: 'warehouses__id__stock_ledger__warehouse_id');

  $$StockLedgerTableProcessedTableManager get stockLedgerRefs {
    final manager = $$StockLedgerTableTableManager($_db, $_db.stockLedger)
        .filter((f) => f.warehouseId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_stockLedgerRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ProductionReceiptsTable, List<ProductionReceipt>>
      _productionReceiptsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.productionReceipts,
              aliasName: 'warehouses__id__production_receipts__warehouse_id');

  $$ProductionReceiptsTableProcessedTableManager get productionReceiptsRefs {
    final manager = $$ProductionReceiptsTableTableManager(
            $_db, $_db.productionReceipts)
        .filter((f) => f.warehouseId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_productionReceiptsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$WarehousesTableFilterComposer
    extends Composer<_$AppDatabase, $WarehousesTable> {
  $$WarehousesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get warehouseCode => $composableBuilder(
      column: $table.warehouseCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get warehouseName => $composableBuilder(
      column: $table.warehouseName, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isDefault => $composableBuilder(
      column: $table.isDefault, builder: (column) => ColumnFilters(column));

  Expression<bool> tanksRefs(
      Expression<bool> Function($$TanksTableFilterComposer f) f) {
    final $$TanksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.tanks,
        getReferencedColumn: (t) => t.warehouseId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TanksTableFilterComposer(
              $db: $db,
              $table: $db.tanks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> batchesRefs(
      Expression<bool> Function($$BatchesTableFilterComposer f) f) {
    final $$BatchesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.batches,
        getReferencedColumn: (t) => t.warehouseId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BatchesTableFilterComposer(
              $db: $db,
              $table: $db.batches,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> stockLedgerRefs(
      Expression<bool> Function($$StockLedgerTableFilterComposer f) f) {
    final $$StockLedgerTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stockLedger,
        getReferencedColumn: (t) => t.warehouseId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StockLedgerTableFilterComposer(
              $db: $db,
              $table: $db.stockLedger,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> productionReceiptsRefs(
      Expression<bool> Function($$ProductionReceiptsTableFilterComposer f) f) {
    final $$ProductionReceiptsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.productionReceipts,
        getReferencedColumn: (t) => t.warehouseId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionReceiptsTableFilterComposer(
              $db: $db,
              $table: $db.productionReceipts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$WarehousesTableOrderingComposer
    extends Composer<_$AppDatabase, $WarehousesTable> {
  $$WarehousesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get warehouseCode => $composableBuilder(
      column: $table.warehouseCode,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get warehouseName => $composableBuilder(
      column: $table.warehouseName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDefault => $composableBuilder(
      column: $table.isDefault, builder: (column) => ColumnOrderings(column));
}

class $$WarehousesTableAnnotationComposer
    extends Composer<_$AppDatabase, $WarehousesTable> {
  $$WarehousesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get warehouseCode => $composableBuilder(
      column: $table.warehouseCode, builder: (column) => column);

  GeneratedColumn<String> get warehouseName => $composableBuilder(
      column: $table.warehouseName, builder: (column) => column);

  GeneratedColumn<bool> get isDefault =>
      $composableBuilder(column: $table.isDefault, builder: (column) => column);

  Expression<T> tanksRefs<T extends Object>(
      Expression<T> Function($$TanksTableAnnotationComposer a) f) {
    final $$TanksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.tanks,
        getReferencedColumn: (t) => t.warehouseId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TanksTableAnnotationComposer(
              $db: $db,
              $table: $db.tanks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> batchesRefs<T extends Object>(
      Expression<T> Function($$BatchesTableAnnotationComposer a) f) {
    final $$BatchesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.batches,
        getReferencedColumn: (t) => t.warehouseId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BatchesTableAnnotationComposer(
              $db: $db,
              $table: $db.batches,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> stockLedgerRefs<T extends Object>(
      Expression<T> Function($$StockLedgerTableAnnotationComposer a) f) {
    final $$StockLedgerTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stockLedger,
        getReferencedColumn: (t) => t.warehouseId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StockLedgerTableAnnotationComposer(
              $db: $db,
              $table: $db.stockLedger,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> productionReceiptsRefs<T extends Object>(
      Expression<T> Function($$ProductionReceiptsTableAnnotationComposer a) f) {
    final $$ProductionReceiptsTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.productionReceipts,
            getReferencedColumn: (t) => t.warehouseId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$ProductionReceiptsTableAnnotationComposer(
                  $db: $db,
                  $table: $db.productionReceipts,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$WarehousesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $WarehousesTable,
    Warehouse,
    $$WarehousesTableFilterComposer,
    $$WarehousesTableOrderingComposer,
    $$WarehousesTableAnnotationComposer,
    $$WarehousesTableCreateCompanionBuilder,
    $$WarehousesTableUpdateCompanionBuilder,
    (Warehouse, $$WarehousesTableReferences),
    Warehouse,
    PrefetchHooks Function(
        {bool tanksRefs,
        bool batchesRefs,
        bool stockLedgerRefs,
        bool productionReceiptsRefs})> {
  $$WarehousesTableTableManager(_$AppDatabase db, $WarehousesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WarehousesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WarehousesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WarehousesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> warehouseCode = const Value.absent(),
            Value<String> warehouseName = const Value.absent(),
            Value<bool> isDefault = const Value.absent(),
          }) =>
              WarehousesCompanion(
            id: id,
            warehouseCode: warehouseCode,
            warehouseName: warehouseName,
            isDefault: isDefault,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String warehouseCode,
            required String warehouseName,
            Value<bool> isDefault = const Value.absent(),
          }) =>
              WarehousesCompanion.insert(
            id: id,
            warehouseCode: warehouseCode,
            warehouseName: warehouseName,
            isDefault: isDefault,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$WarehousesTable, Warehouse>(table),
                    $$WarehousesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {tanksRefs = false,
              batchesRefs = false,
              stockLedgerRefs = false,
              productionReceiptsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (tanksRefs) db.tanks,
                if (batchesRefs) db.batches,
                if (stockLedgerRefs) db.stockLedger,
                if (productionReceiptsRefs) db.productionReceipts
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (tanksRefs)
                    await $_getPrefetchedDataByColumns<Warehouse,
                            $WarehousesTable, Tank, $TanksTable>(
                        currentTable: table,
                        referencedTable:
                            $$WarehousesTableReferences._tanksRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$WarehousesTableReferences(db, table, p0)
                                .tanksRefs,
                        currentColumn: 'id',
                        referencedColumn: 'warehouse_id',
                        typedResults: items),
                  if (batchesRefs)
                    await $_getPrefetchedDataByColumns<Warehouse,
                            $WarehousesTable, Batche, $BatchesTable>(
                        currentTable: table,
                        referencedTable:
                            $$WarehousesTableReferences._batchesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$WarehousesTableReferences(db, table, p0)
                                .batchesRefs,
                        currentColumn: 'id',
                        referencedColumn: 'warehouse_id',
                        typedResults: items),
                  if (stockLedgerRefs)
                    await $_getPrefetchedDataByColumns<
                            Warehouse,
                            $WarehousesTable,
                            StockLedgerData,
                            $StockLedgerTable>(
                        currentTable: table,
                        referencedTable: $$WarehousesTableReferences
                            ._stockLedgerRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$WarehousesTableReferences(db, table, p0)
                                .stockLedgerRefs,
                        currentColumn: 'id',
                        referencedColumn: 'warehouse_id',
                        typedResults: items),
                  if (productionReceiptsRefs)
                    await $_getPrefetchedDataByColumns<
                            Warehouse,
                            $WarehousesTable,
                            ProductionReceipt,
                            $ProductionReceiptsTable>(
                        currentTable: table,
                        referencedTable: $$WarehousesTableReferences
                            ._productionReceiptsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$WarehousesTableReferences(db, table, p0)
                                .productionReceiptsRefs,
                        currentColumn: 'id',
                        referencedColumn: 'warehouse_id',
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$WarehousesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $WarehousesTable,
    Warehouse,
    $$WarehousesTableFilterComposer,
    $$WarehousesTableOrderingComposer,
    $$WarehousesTableAnnotationComposer,
    $$WarehousesTableCreateCompanionBuilder,
    $$WarehousesTableUpdateCompanionBuilder,
    (Warehouse, $$WarehousesTableReferences),
    Warehouse,
    PrefetchHooks Function(
        {bool tanksRefs,
        bool batchesRefs,
        bool stockLedgerRefs,
        bool productionReceiptsRefs})>;
typedef $$TanksTableCreateCompanionBuilder = TanksCompanion Function({
  Value<int> id,
  required String tankCode,
  required String tankName,
  required String tankType,
  required double capacityLiter,
  Value<int?> currentItemId,
  Value<int?> currentBatchId,
  Value<double> currentQty,
  Value<String> status,
  Value<int?> warehouseId,
});
typedef $$TanksTableUpdateCompanionBuilder = TanksCompanion Function({
  Value<int> id,
  Value<String> tankCode,
  Value<String> tankName,
  Value<String> tankType,
  Value<double> capacityLiter,
  Value<int?> currentItemId,
  Value<int?> currentBatchId,
  Value<double> currentQty,
  Value<String> status,
  Value<int?> warehouseId,
});

final class $$TanksTableReferences
    extends BaseReferences<_$AppDatabase, $TanksTable, Tank> {
  $$TanksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ItemsTable _currentItemIdTable(_$AppDatabase db) =>
      db.items.createAlias('tanks__current_item_id__items__id');

  $$ItemsTableProcessedTableManager? get currentItemId {
    final $_column = $_itemColumn<int>('current_item_id');
    if ($_column == null) return null;
    final manager = $$ItemsTableTableManager($_db, $_db.items)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_currentItemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $WarehousesTable _warehouseIdTable(_$AppDatabase db) =>
      db.warehouses.createAlias('tanks__warehouse_id__warehouses__id');

  $$WarehousesTableProcessedTableManager? get warehouseId {
    final $_column = $_itemColumn<int>('warehouse_id');
    if ($_column == null) return null;
    final manager = $$WarehousesTableTableManager($_db, $_db.warehouses)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_warehouseIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$StockLedgerTable, List<StockLedgerData>>
      _stockLedgerRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.stockLedger,
              aliasName: 'tanks__id__stock_ledger__tank_id');

  $$StockLedgerTableProcessedTableManager get stockLedgerRefs {
    final manager = $$StockLedgerTableTableManager($_db, $_db.stockLedger)
        .filter((f) => f.tankId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_stockLedgerRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ProductionIssuesTable, List<ProductionIssue>>
      _productionIssuesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.productionIssues,
              aliasName: 'tanks__id__production_issues__tank_id');

  $$ProductionIssuesTableProcessedTableManager get productionIssuesRefs {
    final manager =
        $$ProductionIssuesTableTableManager($_db, $_db.productionIssues)
            .filter((f) => f.tankId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_productionIssuesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$TanksTableFilterComposer extends Composer<_$AppDatabase, $TanksTable> {
  $$TanksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tankCode => $composableBuilder(
      column: $table.tankCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tankName => $composableBuilder(
      column: $table.tankName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tankType => $composableBuilder(
      column: $table.tankType, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get capacityLiter => $composableBuilder(
      column: $table.capacityLiter, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get currentBatchId => $composableBuilder(
      column: $table.currentBatchId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get currentQty => $composableBuilder(
      column: $table.currentQty, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  $$ItemsTableFilterComposer get currentItemId {
    final $$ItemsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.currentItemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableFilterComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$WarehousesTableFilterComposer get warehouseId {
    final $$WarehousesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.warehouseId,
        referencedTable: $db.warehouses,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WarehousesTableFilterComposer(
              $db: $db,
              $table: $db.warehouses,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> stockLedgerRefs(
      Expression<bool> Function($$StockLedgerTableFilterComposer f) f) {
    final $$StockLedgerTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stockLedger,
        getReferencedColumn: (t) => t.tankId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StockLedgerTableFilterComposer(
              $db: $db,
              $table: $db.stockLedger,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> productionIssuesRefs(
      Expression<bool> Function($$ProductionIssuesTableFilterComposer f) f) {
    final $$ProductionIssuesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.productionIssues,
        getReferencedColumn: (t) => t.tankId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionIssuesTableFilterComposer(
              $db: $db,
              $table: $db.productionIssues,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TanksTableOrderingComposer
    extends Composer<_$AppDatabase, $TanksTable> {
  $$TanksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tankCode => $composableBuilder(
      column: $table.tankCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tankName => $composableBuilder(
      column: $table.tankName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tankType => $composableBuilder(
      column: $table.tankType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get capacityLiter => $composableBuilder(
      column: $table.capacityLiter,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get currentBatchId => $composableBuilder(
      column: $table.currentBatchId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get currentQty => $composableBuilder(
      column: $table.currentQty, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  $$ItemsTableOrderingComposer get currentItemId {
    final $$ItemsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.currentItemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableOrderingComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$WarehousesTableOrderingComposer get warehouseId {
    final $$WarehousesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.warehouseId,
        referencedTable: $db.warehouses,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WarehousesTableOrderingComposer(
              $db: $db,
              $table: $db.warehouses,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TanksTableAnnotationComposer
    extends Composer<_$AppDatabase, $TanksTable> {
  $$TanksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get tankCode =>
      $composableBuilder(column: $table.tankCode, builder: (column) => column);

  GeneratedColumn<String> get tankName =>
      $composableBuilder(column: $table.tankName, builder: (column) => column);

  GeneratedColumn<String> get tankType =>
      $composableBuilder(column: $table.tankType, builder: (column) => column);

  GeneratedColumn<double> get capacityLiter => $composableBuilder(
      column: $table.capacityLiter, builder: (column) => column);

  GeneratedColumn<int> get currentBatchId => $composableBuilder(
      column: $table.currentBatchId, builder: (column) => column);

  GeneratedColumn<double> get currentQty => $composableBuilder(
      column: $table.currentQty, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  $$ItemsTableAnnotationComposer get currentItemId {
    final $$ItemsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.currentItemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableAnnotationComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$WarehousesTableAnnotationComposer get warehouseId {
    final $$WarehousesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.warehouseId,
        referencedTable: $db.warehouses,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WarehousesTableAnnotationComposer(
              $db: $db,
              $table: $db.warehouses,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> stockLedgerRefs<T extends Object>(
      Expression<T> Function($$StockLedgerTableAnnotationComposer a) f) {
    final $$StockLedgerTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stockLedger,
        getReferencedColumn: (t) => t.tankId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StockLedgerTableAnnotationComposer(
              $db: $db,
              $table: $db.stockLedger,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> productionIssuesRefs<T extends Object>(
      Expression<T> Function($$ProductionIssuesTableAnnotationComposer a) f) {
    final $$ProductionIssuesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.productionIssues,
        getReferencedColumn: (t) => t.tankId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionIssuesTableAnnotationComposer(
              $db: $db,
              $table: $db.productionIssues,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TanksTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TanksTable,
    Tank,
    $$TanksTableFilterComposer,
    $$TanksTableOrderingComposer,
    $$TanksTableAnnotationComposer,
    $$TanksTableCreateCompanionBuilder,
    $$TanksTableUpdateCompanionBuilder,
    (Tank, $$TanksTableReferences),
    Tank,
    PrefetchHooks Function(
        {bool currentItemId,
        bool warehouseId,
        bool stockLedgerRefs,
        bool productionIssuesRefs})> {
  $$TanksTableTableManager(_$AppDatabase db, $TanksTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TanksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TanksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TanksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> tankCode = const Value.absent(),
            Value<String> tankName = const Value.absent(),
            Value<String> tankType = const Value.absent(),
            Value<double> capacityLiter = const Value.absent(),
            Value<int?> currentItemId = const Value.absent(),
            Value<int?> currentBatchId = const Value.absent(),
            Value<double> currentQty = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<int?> warehouseId = const Value.absent(),
          }) =>
              TanksCompanion(
            id: id,
            tankCode: tankCode,
            tankName: tankName,
            tankType: tankType,
            capacityLiter: capacityLiter,
            currentItemId: currentItemId,
            currentBatchId: currentBatchId,
            currentQty: currentQty,
            status: status,
            warehouseId: warehouseId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String tankCode,
            required String tankName,
            required String tankType,
            required double capacityLiter,
            Value<int?> currentItemId = const Value.absent(),
            Value<int?> currentBatchId = const Value.absent(),
            Value<double> currentQty = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<int?> warehouseId = const Value.absent(),
          }) =>
              TanksCompanion.insert(
            id: id,
            tankCode: tankCode,
            tankName: tankName,
            tankType: tankType,
            capacityLiter: capacityLiter,
            currentItemId: currentItemId,
            currentBatchId: currentBatchId,
            currentQty: currentQty,
            status: status,
            warehouseId: warehouseId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$TanksTable, Tank>(table),
                    $$TanksTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {currentItemId = false,
              warehouseId = false,
              stockLedgerRefs = false,
              productionIssuesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (stockLedgerRefs) db.stockLedger,
                if (productionIssuesRefs) db.productionIssues
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (currentItemId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.currentItemId,
                    referencedTable:
                        $$TanksTableReferences._currentItemIdTable(db),
                    referencedColumn:
                        $$TanksTableReferences._currentItemIdTable(db).id,
                  ) as T;
                }
                if (warehouseId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.warehouseId,
                    referencedTable:
                        $$TanksTableReferences._warehouseIdTable(db),
                    referencedColumn:
                        $$TanksTableReferences._warehouseIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (stockLedgerRefs)
                    await $_getPrefetchedDataByColumns<Tank, $TanksTable,
                            StockLedgerData, $StockLedgerTable>(
                        currentTable: table,
                        referencedTable:
                            $$TanksTableReferences._stockLedgerRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TanksTableReferences(db, table, p0)
                                .stockLedgerRefs,
                        currentColumn: 'id',
                        referencedColumn: 'tank_id',
                        typedResults: items),
                  if (productionIssuesRefs)
                    await $_getPrefetchedDataByColumns<Tank, $TanksTable,
                            ProductionIssue, $ProductionIssuesTable>(
                        currentTable: table,
                        referencedTable: $$TanksTableReferences
                            ._productionIssuesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TanksTableReferences(db, table, p0)
                                .productionIssuesRefs,
                        currentColumn: 'id',
                        referencedColumn: 'tank_id',
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$TanksTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TanksTable,
    Tank,
    $$TanksTableFilterComposer,
    $$TanksTableOrderingComposer,
    $$TanksTableAnnotationComposer,
    $$TanksTableCreateCompanionBuilder,
    $$TanksTableUpdateCompanionBuilder,
    (Tank, $$TanksTableReferences),
    Tank,
    PrefetchHooks Function(
        {bool currentItemId,
        bool warehouseId,
        bool stockLedgerRefs,
        bool productionIssuesRefs})>;
typedef $$PartiesTableCreateCompanionBuilder = PartiesCompanion Function({
  Value<int> id,
  required String partyCode,
  required String partyName,
  required String partyType,
  Value<String?> phone,
  Value<String?> address,
  Value<double> openingBalance,
  Value<bool> isActive,
});
typedef $$PartiesTableUpdateCompanionBuilder = PartiesCompanion Function({
  Value<int> id,
  Value<String> partyCode,
  Value<String> partyName,
  Value<String> partyType,
  Value<String?> phone,
  Value<String?> address,
  Value<double> openingBalance,
  Value<bool> isActive,
});

final class $$PartiesTableReferences
    extends BaseReferences<_$AppDatabase, $PartiesTable, Party> {
  $$PartiesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$VouchersTable, List<Voucher>> _vouchersRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.vouchers,
          aliasName: 'parties__id__vouchers__party_id');

  $$VouchersTableProcessedTableManager get vouchersRefs {
    final manager = $$VouchersTableTableManager($_db, $_db.vouchers)
        .filter((f) => f.partyId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_vouchersRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$PartiesTableFilterComposer
    extends Composer<_$AppDatabase, $PartiesTable> {
  $$PartiesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get partyCode => $composableBuilder(
      column: $table.partyCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get partyName => $composableBuilder(
      column: $table.partyName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get partyType => $composableBuilder(
      column: $table.partyType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get openingBalance => $composableBuilder(
      column: $table.openingBalance,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  Expression<bool> vouchersRefs(
      Expression<bool> Function($$VouchersTableFilterComposer f) f) {
    final $$VouchersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.vouchers,
        getReferencedColumn: (t) => t.partyId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VouchersTableFilterComposer(
              $db: $db,
              $table: $db.vouchers,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$PartiesTableOrderingComposer
    extends Composer<_$AppDatabase, $PartiesTable> {
  $$PartiesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get partyCode => $composableBuilder(
      column: $table.partyCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get partyName => $composableBuilder(
      column: $table.partyName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get partyType => $composableBuilder(
      column: $table.partyType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get openingBalance => $composableBuilder(
      column: $table.openingBalance,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));
}

class $$PartiesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PartiesTable> {
  $$PartiesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get partyCode =>
      $composableBuilder(column: $table.partyCode, builder: (column) => column);

  GeneratedColumn<String> get partyName =>
      $composableBuilder(column: $table.partyName, builder: (column) => column);

  GeneratedColumn<String> get partyType =>
      $composableBuilder(column: $table.partyType, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<double> get openingBalance => $composableBuilder(
      column: $table.openingBalance, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  Expression<T> vouchersRefs<T extends Object>(
      Expression<T> Function($$VouchersTableAnnotationComposer a) f) {
    final $$VouchersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.vouchers,
        getReferencedColumn: (t) => t.partyId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VouchersTableAnnotationComposer(
              $db: $db,
              $table: $db.vouchers,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$PartiesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PartiesTable,
    Party,
    $$PartiesTableFilterComposer,
    $$PartiesTableOrderingComposer,
    $$PartiesTableAnnotationComposer,
    $$PartiesTableCreateCompanionBuilder,
    $$PartiesTableUpdateCompanionBuilder,
    (Party, $$PartiesTableReferences),
    Party,
    PrefetchHooks Function({bool vouchersRefs})> {
  $$PartiesTableTableManager(_$AppDatabase db, $PartiesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PartiesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PartiesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PartiesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> partyCode = const Value.absent(),
            Value<String> partyName = const Value.absent(),
            Value<String> partyType = const Value.absent(),
            Value<String?> phone = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<double> openingBalance = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
          }) =>
              PartiesCompanion(
            id: id,
            partyCode: partyCode,
            partyName: partyName,
            partyType: partyType,
            phone: phone,
            address: address,
            openingBalance: openingBalance,
            isActive: isActive,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String partyCode,
            required String partyName,
            required String partyType,
            Value<String?> phone = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<double> openingBalance = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
          }) =>
              PartiesCompanion.insert(
            id: id,
            partyCode: partyCode,
            partyName: partyName,
            partyType: partyType,
            phone: phone,
            address: address,
            openingBalance: openingBalance,
            isActive: isActive,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$PartiesTable, Party>(table),
                    $$PartiesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({vouchersRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (vouchersRefs) db.vouchers],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (vouchersRefs)
                    await $_getPrefetchedDataByColumns<Party, $PartiesTable,
                            Voucher, $VouchersTable>(
                        currentTable: table,
                        referencedTable:
                            $$PartiesTableReferences._vouchersRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$PartiesTableReferences(db, table, p0)
                                .vouchersRefs,
                        currentColumn: 'id',
                        referencedColumn: 'party_id',
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$PartiesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PartiesTable,
    Party,
    $$PartiesTableFilterComposer,
    $$PartiesTableOrderingComposer,
    $$PartiesTableAnnotationComposer,
    $$PartiesTableCreateCompanionBuilder,
    $$PartiesTableUpdateCompanionBuilder,
    (Party, $$PartiesTableReferences),
    Party,
    PrefetchHooks Function({bool vouchersRefs})>;
typedef $$RecipesTableCreateCompanionBuilder = RecipesCompanion Function({
  Value<int> id,
  required String recipeCode,
  required String recipeName,
  required int finishedItemId,
  required double baseQty,
  required String baseUnit,
  Value<double> targetOverrun,
  Value<double> expectedYield,
  Value<int> version,
  Value<bool> isActive,
  Value<String?> notes,
});
typedef $$RecipesTableUpdateCompanionBuilder = RecipesCompanion Function({
  Value<int> id,
  Value<String> recipeCode,
  Value<String> recipeName,
  Value<int> finishedItemId,
  Value<double> baseQty,
  Value<String> baseUnit,
  Value<double> targetOverrun,
  Value<double> expectedYield,
  Value<int> version,
  Value<bool> isActive,
  Value<String?> notes,
});

final class $$RecipesTableReferences
    extends BaseReferences<_$AppDatabase, $RecipesTable, Recipe> {
  $$RecipesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ItemsTable _finishedItemIdTable(_$AppDatabase db) =>
      db.items.createAlias('recipes__finished_item_id__items__id');

  $$ItemsTableProcessedTableManager get finishedItemId {
    final $_column = $_itemColumn<int>('finished_item_id')!;

    final manager = $$ItemsTableTableManager($_db, $_db.items)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_finishedItemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$RecipeLinesTable, List<RecipeLine>>
      _recipeLinesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.recipeLines,
              aliasName: 'recipes__id__recipe_lines__recipe_id');

  $$RecipeLinesTableProcessedTableManager get recipeLinesRefs {
    final manager = $$RecipeLinesTableTableManager($_db, $_db.recipeLines)
        .filter((f) => f.recipeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_recipeLinesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ProductionOrdersTable, List<ProductionOrder>>
      _productionOrdersRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.productionOrders,
              aliasName: 'recipes__id__production_orders__recipe_id');

  $$ProductionOrdersTableProcessedTableManager get productionOrdersRefs {
    final manager =
        $$ProductionOrdersTableTableManager($_db, $_db.productionOrders)
            .filter((f) => f.recipeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_productionOrdersRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$RecipesTableFilterComposer
    extends Composer<_$AppDatabase, $RecipesTable> {
  $$RecipesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get recipeCode => $composableBuilder(
      column: $table.recipeCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get recipeName => $composableBuilder(
      column: $table.recipeName, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get baseQty => $composableBuilder(
      column: $table.baseQty, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get baseUnit => $composableBuilder(
      column: $table.baseUnit, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get targetOverrun => $composableBuilder(
      column: $table.targetOverrun, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get expectedYield => $composableBuilder(
      column: $table.expectedYield, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get version => $composableBuilder(
      column: $table.version, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  $$ItemsTableFilterComposer get finishedItemId {
    final $$ItemsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.finishedItemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableFilterComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> recipeLinesRefs(
      Expression<bool> Function($$RecipeLinesTableFilterComposer f) f) {
    final $$RecipeLinesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.recipeLines,
        getReferencedColumn: (t) => t.recipeId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RecipeLinesTableFilterComposer(
              $db: $db,
              $table: $db.recipeLines,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> productionOrdersRefs(
      Expression<bool> Function($$ProductionOrdersTableFilterComposer f) f) {
    final $$ProductionOrdersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.productionOrders,
        getReferencedColumn: (t) => t.recipeId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionOrdersTableFilterComposer(
              $db: $db,
              $table: $db.productionOrders,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$RecipesTableOrderingComposer
    extends Composer<_$AppDatabase, $RecipesTable> {
  $$RecipesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get recipeCode => $composableBuilder(
      column: $table.recipeCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get recipeName => $composableBuilder(
      column: $table.recipeName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get baseQty => $composableBuilder(
      column: $table.baseQty, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get baseUnit => $composableBuilder(
      column: $table.baseUnit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get targetOverrun => $composableBuilder(
      column: $table.targetOverrun,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get expectedYield => $composableBuilder(
      column: $table.expectedYield,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get version => $composableBuilder(
      column: $table.version, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  $$ItemsTableOrderingComposer get finishedItemId {
    final $$ItemsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.finishedItemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableOrderingComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$RecipesTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecipesTable> {
  $$RecipesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get recipeCode => $composableBuilder(
      column: $table.recipeCode, builder: (column) => column);

  GeneratedColumn<String> get recipeName => $composableBuilder(
      column: $table.recipeName, builder: (column) => column);

  GeneratedColumn<double> get baseQty =>
      $composableBuilder(column: $table.baseQty, builder: (column) => column);

  GeneratedColumn<String> get baseUnit =>
      $composableBuilder(column: $table.baseUnit, builder: (column) => column);

  GeneratedColumn<double> get targetOverrun => $composableBuilder(
      column: $table.targetOverrun, builder: (column) => column);

  GeneratedColumn<double> get expectedYield => $composableBuilder(
      column: $table.expectedYield, builder: (column) => column);

  GeneratedColumn<int> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  $$ItemsTableAnnotationComposer get finishedItemId {
    final $$ItemsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.finishedItemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableAnnotationComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> recipeLinesRefs<T extends Object>(
      Expression<T> Function($$RecipeLinesTableAnnotationComposer a) f) {
    final $$RecipeLinesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.recipeLines,
        getReferencedColumn: (t) => t.recipeId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RecipeLinesTableAnnotationComposer(
              $db: $db,
              $table: $db.recipeLines,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> productionOrdersRefs<T extends Object>(
      Expression<T> Function($$ProductionOrdersTableAnnotationComposer a) f) {
    final $$ProductionOrdersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.productionOrders,
        getReferencedColumn: (t) => t.recipeId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionOrdersTableAnnotationComposer(
              $db: $db,
              $table: $db.productionOrders,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$RecipesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $RecipesTable,
    Recipe,
    $$RecipesTableFilterComposer,
    $$RecipesTableOrderingComposer,
    $$RecipesTableAnnotationComposer,
    $$RecipesTableCreateCompanionBuilder,
    $$RecipesTableUpdateCompanionBuilder,
    (Recipe, $$RecipesTableReferences),
    Recipe,
    PrefetchHooks Function(
        {bool finishedItemId,
        bool recipeLinesRefs,
        bool productionOrdersRefs})> {
  $$RecipesTableTableManager(_$AppDatabase db, $RecipesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecipesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecipesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecipesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> recipeCode = const Value.absent(),
            Value<String> recipeName = const Value.absent(),
            Value<int> finishedItemId = const Value.absent(),
            Value<double> baseQty = const Value.absent(),
            Value<String> baseUnit = const Value.absent(),
            Value<double> targetOverrun = const Value.absent(),
            Value<double> expectedYield = const Value.absent(),
            Value<int> version = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<String?> notes = const Value.absent(),
          }) =>
              RecipesCompanion(
            id: id,
            recipeCode: recipeCode,
            recipeName: recipeName,
            finishedItemId: finishedItemId,
            baseQty: baseQty,
            baseUnit: baseUnit,
            targetOverrun: targetOverrun,
            expectedYield: expectedYield,
            version: version,
            isActive: isActive,
            notes: notes,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String recipeCode,
            required String recipeName,
            required int finishedItemId,
            required double baseQty,
            required String baseUnit,
            Value<double> targetOverrun = const Value.absent(),
            Value<double> expectedYield = const Value.absent(),
            Value<int> version = const Value.absent(),
            Value<bool> isActive = const Value.absent(),
            Value<String?> notes = const Value.absent(),
          }) =>
              RecipesCompanion.insert(
            id: id,
            recipeCode: recipeCode,
            recipeName: recipeName,
            finishedItemId: finishedItemId,
            baseQty: baseQty,
            baseUnit: baseUnit,
            targetOverrun: targetOverrun,
            expectedYield: expectedYield,
            version: version,
            isActive: isActive,
            notes: notes,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$RecipesTable, Recipe>(table),
                    $$RecipesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {finishedItemId = false,
              recipeLinesRefs = false,
              productionOrdersRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (recipeLinesRefs) db.recipeLines,
                if (productionOrdersRefs) db.productionOrders
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (finishedItemId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.finishedItemId,
                    referencedTable:
                        $$RecipesTableReferences._finishedItemIdTable(db),
                    referencedColumn:
                        $$RecipesTableReferences._finishedItemIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (recipeLinesRefs)
                    await $_getPrefetchedDataByColumns<Recipe, $RecipesTable,
                            RecipeLine, $RecipeLinesTable>(
                        currentTable: table,
                        referencedTable:
                            $$RecipesTableReferences._recipeLinesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$RecipesTableReferences(db, table, p0)
                                .recipeLinesRefs,
                        currentColumn: 'id',
                        referencedColumn: 'recipe_id',
                        typedResults: items),
                  if (productionOrdersRefs)
                    await $_getPrefetchedDataByColumns<Recipe, $RecipesTable,
                            ProductionOrder, $ProductionOrdersTable>(
                        currentTable: table,
                        referencedTable: $$RecipesTableReferences
                            ._productionOrdersRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$RecipesTableReferences(db, table, p0)
                                .productionOrdersRefs,
                        currentColumn: 'id',
                        referencedColumn: 'recipe_id',
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$RecipesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $RecipesTable,
    Recipe,
    $$RecipesTableFilterComposer,
    $$RecipesTableOrderingComposer,
    $$RecipesTableAnnotationComposer,
    $$RecipesTableCreateCompanionBuilder,
    $$RecipesTableUpdateCompanionBuilder,
    (Recipe, $$RecipesTableReferences),
    Recipe,
    PrefetchHooks Function(
        {bool finishedItemId,
        bool recipeLinesRefs,
        bool productionOrdersRefs})>;
typedef $$RecipeLinesTableCreateCompanionBuilder = RecipeLinesCompanion
    Function({
  Value<int> id,
  required int recipeId,
  required int itemId,
  required double qty,
  required String unit,
  Value<double> wastagePercent,
  Value<int> sequence,
});
typedef $$RecipeLinesTableUpdateCompanionBuilder = RecipeLinesCompanion
    Function({
  Value<int> id,
  Value<int> recipeId,
  Value<int> itemId,
  Value<double> qty,
  Value<String> unit,
  Value<double> wastagePercent,
  Value<int> sequence,
});

final class $$RecipeLinesTableReferences
    extends BaseReferences<_$AppDatabase, $RecipeLinesTable, RecipeLine> {
  $$RecipeLinesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RecipesTable _recipeIdTable(_$AppDatabase db) =>
      db.recipes.createAlias('recipe_lines__recipe_id__recipes__id');

  $$RecipesTableProcessedTableManager get recipeId {
    final $_column = $_itemColumn<int>('recipe_id')!;

    final manager = $$RecipesTableTableManager($_db, $_db.recipes)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_recipeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $ItemsTable _itemIdTable(_$AppDatabase db) =>
      db.items.createAlias('recipe_lines__item_id__items__id');

  $$ItemsTableProcessedTableManager get itemId {
    final $_column = $_itemColumn<int>('item_id')!;

    final manager = $$ItemsTableTableManager($_db, $_db.items)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$RecipeLinesTableFilterComposer
    extends Composer<_$AppDatabase, $RecipeLinesTable> {
  $$RecipeLinesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get qty => $composableBuilder(
      column: $table.qty, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get unit => $composableBuilder(
      column: $table.unit, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get wastagePercent => $composableBuilder(
      column: $table.wastagePercent,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get sequence => $composableBuilder(
      column: $table.sequence, builder: (column) => ColumnFilters(column));

  $$RecipesTableFilterComposer get recipeId {
    final $$RecipesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.recipeId,
        referencedTable: $db.recipes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RecipesTableFilterComposer(
              $db: $db,
              $table: $db.recipes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ItemsTableFilterComposer get itemId {
    final $$ItemsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableFilterComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$RecipeLinesTableOrderingComposer
    extends Composer<_$AppDatabase, $RecipeLinesTable> {
  $$RecipeLinesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get qty => $composableBuilder(
      column: $table.qty, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get unit => $composableBuilder(
      column: $table.unit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get wastagePercent => $composableBuilder(
      column: $table.wastagePercent,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get sequence => $composableBuilder(
      column: $table.sequence, builder: (column) => ColumnOrderings(column));

  $$RecipesTableOrderingComposer get recipeId {
    final $$RecipesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.recipeId,
        referencedTable: $db.recipes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RecipesTableOrderingComposer(
              $db: $db,
              $table: $db.recipes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ItemsTableOrderingComposer get itemId {
    final $$ItemsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableOrderingComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$RecipeLinesTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecipeLinesTable> {
  $$RecipeLinesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get qty =>
      $composableBuilder(column: $table.qty, builder: (column) => column);

  GeneratedColumn<String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<double> get wastagePercent => $composableBuilder(
      column: $table.wastagePercent, builder: (column) => column);

  GeneratedColumn<int> get sequence =>
      $composableBuilder(column: $table.sequence, builder: (column) => column);

  $$RecipesTableAnnotationComposer get recipeId {
    final $$RecipesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.recipeId,
        referencedTable: $db.recipes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RecipesTableAnnotationComposer(
              $db: $db,
              $table: $db.recipes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ItemsTableAnnotationComposer get itemId {
    final $$ItemsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableAnnotationComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$RecipeLinesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $RecipeLinesTable,
    RecipeLine,
    $$RecipeLinesTableFilterComposer,
    $$RecipeLinesTableOrderingComposer,
    $$RecipeLinesTableAnnotationComposer,
    $$RecipeLinesTableCreateCompanionBuilder,
    $$RecipeLinesTableUpdateCompanionBuilder,
    (RecipeLine, $$RecipeLinesTableReferences),
    RecipeLine,
    PrefetchHooks Function({bool recipeId, bool itemId})> {
  $$RecipeLinesTableTableManager(_$AppDatabase db, $RecipeLinesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecipeLinesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecipeLinesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecipeLinesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> recipeId = const Value.absent(),
            Value<int> itemId = const Value.absent(),
            Value<double> qty = const Value.absent(),
            Value<String> unit = const Value.absent(),
            Value<double> wastagePercent = const Value.absent(),
            Value<int> sequence = const Value.absent(),
          }) =>
              RecipeLinesCompanion(
            id: id,
            recipeId: recipeId,
            itemId: itemId,
            qty: qty,
            unit: unit,
            wastagePercent: wastagePercent,
            sequence: sequence,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int recipeId,
            required int itemId,
            required double qty,
            required String unit,
            Value<double> wastagePercent = const Value.absent(),
            Value<int> sequence = const Value.absent(),
          }) =>
              RecipeLinesCompanion.insert(
            id: id,
            recipeId: recipeId,
            itemId: itemId,
            qty: qty,
            unit: unit,
            wastagePercent: wastagePercent,
            sequence: sequence,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$RecipeLinesTable, RecipeLine>(table),
                    $$RecipeLinesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({recipeId = false, itemId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (recipeId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.recipeId,
                    referencedTable:
                        $$RecipeLinesTableReferences._recipeIdTable(db),
                    referencedColumn:
                        $$RecipeLinesTableReferences._recipeIdTable(db).id,
                  ) as T;
                }
                if (itemId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.itemId,
                    referencedTable:
                        $$RecipeLinesTableReferences._itemIdTable(db),
                    referencedColumn:
                        $$RecipeLinesTableReferences._itemIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$RecipeLinesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $RecipeLinesTable,
    RecipeLine,
    $$RecipeLinesTableFilterComposer,
    $$RecipeLinesTableOrderingComposer,
    $$RecipeLinesTableAnnotationComposer,
    $$RecipeLinesTableCreateCompanionBuilder,
    $$RecipeLinesTableUpdateCompanionBuilder,
    (RecipeLine, $$RecipeLinesTableReferences),
    RecipeLine,
    PrefetchHooks Function({bool recipeId, bool itemId})>;
typedef $$BatchesTableCreateCompanionBuilder = BatchesCompanion Function({
  Value<int> id,
  required String batchNo,
  required int itemId,
  Value<int?> warehouseId,
  Value<DateTime?> mfgDate,
  Value<DateTime?> expiryDate,
  required double initialQty,
  required double currentQty,
  Value<double> unitCost,
  Value<String> status,
});
typedef $$BatchesTableUpdateCompanionBuilder = BatchesCompanion Function({
  Value<int> id,
  Value<String> batchNo,
  Value<int> itemId,
  Value<int?> warehouseId,
  Value<DateTime?> mfgDate,
  Value<DateTime?> expiryDate,
  Value<double> initialQty,
  Value<double> currentQty,
  Value<double> unitCost,
  Value<String> status,
});

final class $$BatchesTableReferences
    extends BaseReferences<_$AppDatabase, $BatchesTable, Batche> {
  $$BatchesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ItemsTable _itemIdTable(_$AppDatabase db) =>
      db.items.createAlias('batches__item_id__items__id');

  $$ItemsTableProcessedTableManager get itemId {
    final $_column = $_itemColumn<int>('item_id')!;

    final manager = $$ItemsTableTableManager($_db, $_db.items)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $WarehousesTable _warehouseIdTable(_$AppDatabase db) =>
      db.warehouses.createAlias('batches__warehouse_id__warehouses__id');

  $$WarehousesTableProcessedTableManager? get warehouseId {
    final $_column = $_itemColumn<int>('warehouse_id');
    if ($_column == null) return null;
    final manager = $$WarehousesTableTableManager($_db, $_db.warehouses)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_warehouseIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$StockLedgerTable, List<StockLedgerData>>
      _stockLedgerRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.stockLedger,
              aliasName: 'batches__id__stock_ledger__batch_id');

  $$StockLedgerTableProcessedTableManager get stockLedgerRefs {
    final manager = $$StockLedgerTableTableManager($_db, $_db.stockLedger)
        .filter((f) => f.batchId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_stockLedgerRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ProductionIssuesTable, List<ProductionIssue>>
      _productionIssuesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.productionIssues,
              aliasName: 'batches__id__production_issues__batch_id');

  $$ProductionIssuesTableProcessedTableManager get productionIssuesRefs {
    final manager =
        $$ProductionIssuesTableTableManager($_db, $_db.productionIssues)
            .filter((f) => f.batchId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_productionIssuesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$BatchesTableFilterComposer
    extends Composer<_$AppDatabase, $BatchesTable> {
  $$BatchesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get batchNo => $composableBuilder(
      column: $table.batchNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get mfgDate => $composableBuilder(
      column: $table.mfgDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get expiryDate => $composableBuilder(
      column: $table.expiryDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get initialQty => $composableBuilder(
      column: $table.initialQty, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get currentQty => $composableBuilder(
      column: $table.currentQty, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get unitCost => $composableBuilder(
      column: $table.unitCost, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  $$ItemsTableFilterComposer get itemId {
    final $$ItemsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableFilterComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$WarehousesTableFilterComposer get warehouseId {
    final $$WarehousesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.warehouseId,
        referencedTable: $db.warehouses,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WarehousesTableFilterComposer(
              $db: $db,
              $table: $db.warehouses,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> stockLedgerRefs(
      Expression<bool> Function($$StockLedgerTableFilterComposer f) f) {
    final $$StockLedgerTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stockLedger,
        getReferencedColumn: (t) => t.batchId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StockLedgerTableFilterComposer(
              $db: $db,
              $table: $db.stockLedger,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> productionIssuesRefs(
      Expression<bool> Function($$ProductionIssuesTableFilterComposer f) f) {
    final $$ProductionIssuesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.productionIssues,
        getReferencedColumn: (t) => t.batchId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionIssuesTableFilterComposer(
              $db: $db,
              $table: $db.productionIssues,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$BatchesTableOrderingComposer
    extends Composer<_$AppDatabase, $BatchesTable> {
  $$BatchesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get batchNo => $composableBuilder(
      column: $table.batchNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get mfgDate => $composableBuilder(
      column: $table.mfgDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get expiryDate => $composableBuilder(
      column: $table.expiryDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get initialQty => $composableBuilder(
      column: $table.initialQty, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get currentQty => $composableBuilder(
      column: $table.currentQty, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get unitCost => $composableBuilder(
      column: $table.unitCost, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  $$ItemsTableOrderingComposer get itemId {
    final $$ItemsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableOrderingComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$WarehousesTableOrderingComposer get warehouseId {
    final $$WarehousesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.warehouseId,
        referencedTable: $db.warehouses,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WarehousesTableOrderingComposer(
              $db: $db,
              $table: $db.warehouses,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$BatchesTableAnnotationComposer
    extends Composer<_$AppDatabase, $BatchesTable> {
  $$BatchesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get batchNo =>
      $composableBuilder(column: $table.batchNo, builder: (column) => column);

  GeneratedColumn<DateTime> get mfgDate =>
      $composableBuilder(column: $table.mfgDate, builder: (column) => column);

  GeneratedColumn<DateTime> get expiryDate => $composableBuilder(
      column: $table.expiryDate, builder: (column) => column);

  GeneratedColumn<double> get initialQty => $composableBuilder(
      column: $table.initialQty, builder: (column) => column);

  GeneratedColumn<double> get currentQty => $composableBuilder(
      column: $table.currentQty, builder: (column) => column);

  GeneratedColumn<double> get unitCost =>
      $composableBuilder(column: $table.unitCost, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  $$ItemsTableAnnotationComposer get itemId {
    final $$ItemsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableAnnotationComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$WarehousesTableAnnotationComposer get warehouseId {
    final $$WarehousesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.warehouseId,
        referencedTable: $db.warehouses,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WarehousesTableAnnotationComposer(
              $db: $db,
              $table: $db.warehouses,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> stockLedgerRefs<T extends Object>(
      Expression<T> Function($$StockLedgerTableAnnotationComposer a) f) {
    final $$StockLedgerTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.stockLedger,
        getReferencedColumn: (t) => t.batchId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StockLedgerTableAnnotationComposer(
              $db: $db,
              $table: $db.stockLedger,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> productionIssuesRefs<T extends Object>(
      Expression<T> Function($$ProductionIssuesTableAnnotationComposer a) f) {
    final $$ProductionIssuesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.productionIssues,
        getReferencedColumn: (t) => t.batchId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionIssuesTableAnnotationComposer(
              $db: $db,
              $table: $db.productionIssues,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$BatchesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BatchesTable,
    Batche,
    $$BatchesTableFilterComposer,
    $$BatchesTableOrderingComposer,
    $$BatchesTableAnnotationComposer,
    $$BatchesTableCreateCompanionBuilder,
    $$BatchesTableUpdateCompanionBuilder,
    (Batche, $$BatchesTableReferences),
    Batche,
    PrefetchHooks Function(
        {bool itemId,
        bool warehouseId,
        bool stockLedgerRefs,
        bool productionIssuesRefs})> {
  $$BatchesTableTableManager(_$AppDatabase db, $BatchesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BatchesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BatchesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BatchesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> batchNo = const Value.absent(),
            Value<int> itemId = const Value.absent(),
            Value<int?> warehouseId = const Value.absent(),
            Value<DateTime?> mfgDate = const Value.absent(),
            Value<DateTime?> expiryDate = const Value.absent(),
            Value<double> initialQty = const Value.absent(),
            Value<double> currentQty = const Value.absent(),
            Value<double> unitCost = const Value.absent(),
            Value<String> status = const Value.absent(),
          }) =>
              BatchesCompanion(
            id: id,
            batchNo: batchNo,
            itemId: itemId,
            warehouseId: warehouseId,
            mfgDate: mfgDate,
            expiryDate: expiryDate,
            initialQty: initialQty,
            currentQty: currentQty,
            unitCost: unitCost,
            status: status,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String batchNo,
            required int itemId,
            Value<int?> warehouseId = const Value.absent(),
            Value<DateTime?> mfgDate = const Value.absent(),
            Value<DateTime?> expiryDate = const Value.absent(),
            required double initialQty,
            required double currentQty,
            Value<double> unitCost = const Value.absent(),
            Value<String> status = const Value.absent(),
          }) =>
              BatchesCompanion.insert(
            id: id,
            batchNo: batchNo,
            itemId: itemId,
            warehouseId: warehouseId,
            mfgDate: mfgDate,
            expiryDate: expiryDate,
            initialQty: initialQty,
            currentQty: currentQty,
            unitCost: unitCost,
            status: status,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$BatchesTable, Batche>(table),
                    $$BatchesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {itemId = false,
              warehouseId = false,
              stockLedgerRefs = false,
              productionIssuesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (stockLedgerRefs) db.stockLedger,
                if (productionIssuesRefs) db.productionIssues
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (itemId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.itemId,
                    referencedTable: $$BatchesTableReferences._itemIdTable(db),
                    referencedColumn:
                        $$BatchesTableReferences._itemIdTable(db).id,
                  ) as T;
                }
                if (warehouseId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.warehouseId,
                    referencedTable:
                        $$BatchesTableReferences._warehouseIdTable(db),
                    referencedColumn:
                        $$BatchesTableReferences._warehouseIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (stockLedgerRefs)
                    await $_getPrefetchedDataByColumns<Batche, $BatchesTable,
                            StockLedgerData, $StockLedgerTable>(
                        currentTable: table,
                        referencedTable:
                            $$BatchesTableReferences._stockLedgerRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$BatchesTableReferences(db, table, p0)
                                .stockLedgerRefs,
                        currentColumn: 'id',
                        referencedColumn: 'batch_id',
                        typedResults: items),
                  if (productionIssuesRefs)
                    await $_getPrefetchedDataByColumns<Batche, $BatchesTable,
                            ProductionIssue, $ProductionIssuesTable>(
                        currentTable: table,
                        referencedTable: $$BatchesTableReferences
                            ._productionIssuesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$BatchesTableReferences(db, table, p0)
                                .productionIssuesRefs,
                        currentColumn: 'id',
                        referencedColumn: 'batch_id',
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$BatchesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BatchesTable,
    Batche,
    $$BatchesTableFilterComposer,
    $$BatchesTableOrderingComposer,
    $$BatchesTableAnnotationComposer,
    $$BatchesTableCreateCompanionBuilder,
    $$BatchesTableUpdateCompanionBuilder,
    (Batche, $$BatchesTableReferences),
    Batche,
    PrefetchHooks Function(
        {bool itemId,
        bool warehouseId,
        bool stockLedgerRefs,
        bool productionIssuesRefs})>;
typedef $$StockLedgerTableCreateCompanionBuilder = StockLedgerCompanion
    Function({
  Value<int> id,
  Value<int?> voucherId,
  required String voucherType,
  required int itemId,
  Value<int?> batchId,
  Value<int?> warehouseId,
  Value<int?> tankId,
  Value<double> qtyIn,
  Value<double> qtyOut,
  Value<double?> unitCost,
  required DateTime transactionDate,
  Value<String?> narration,
  Value<DateTime> createdAt,
});
typedef $$StockLedgerTableUpdateCompanionBuilder = StockLedgerCompanion
    Function({
  Value<int> id,
  Value<int?> voucherId,
  Value<String> voucherType,
  Value<int> itemId,
  Value<int?> batchId,
  Value<int?> warehouseId,
  Value<int?> tankId,
  Value<double> qtyIn,
  Value<double> qtyOut,
  Value<double?> unitCost,
  Value<DateTime> transactionDate,
  Value<String?> narration,
  Value<DateTime> createdAt,
});

final class $$StockLedgerTableReferences
    extends BaseReferences<_$AppDatabase, $StockLedgerTable, StockLedgerData> {
  $$StockLedgerTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ItemsTable _itemIdTable(_$AppDatabase db) =>
      db.items.createAlias('stock_ledger__item_id__items__id');

  $$ItemsTableProcessedTableManager get itemId {
    final $_column = $_itemColumn<int>('item_id')!;

    final manager = $$ItemsTableTableManager($_db, $_db.items)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $BatchesTable _batchIdTable(_$AppDatabase db) =>
      db.batches.createAlias('stock_ledger__batch_id__batches__id');

  $$BatchesTableProcessedTableManager? get batchId {
    final $_column = $_itemColumn<int>('batch_id');
    if ($_column == null) return null;
    final manager = $$BatchesTableTableManager($_db, $_db.batches)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_batchIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $WarehousesTable _warehouseIdTable(_$AppDatabase db) =>
      db.warehouses.createAlias('stock_ledger__warehouse_id__warehouses__id');

  $$WarehousesTableProcessedTableManager? get warehouseId {
    final $_column = $_itemColumn<int>('warehouse_id');
    if ($_column == null) return null;
    final manager = $$WarehousesTableTableManager($_db, $_db.warehouses)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_warehouseIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $TanksTable _tankIdTable(_$AppDatabase db) =>
      db.tanks.createAlias('stock_ledger__tank_id__tanks__id');

  $$TanksTableProcessedTableManager? get tankId {
    final $_column = $_itemColumn<int>('tank_id');
    if ($_column == null) return null;
    final manager = $$TanksTableTableManager($_db, $_db.tanks)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_tankIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$StockLedgerTableFilterComposer
    extends Composer<_$AppDatabase, $StockLedgerTable> {
  $$StockLedgerTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get voucherId => $composableBuilder(
      column: $table.voucherId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get voucherType => $composableBuilder(
      column: $table.voucherType, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get qtyIn => $composableBuilder(
      column: $table.qtyIn, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get qtyOut => $composableBuilder(
      column: $table.qtyOut, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get unitCost => $composableBuilder(
      column: $table.unitCost, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get transactionDate => $composableBuilder(
      column: $table.transactionDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get narration => $composableBuilder(
      column: $table.narration, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$ItemsTableFilterComposer get itemId {
    final $$ItemsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableFilterComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$BatchesTableFilterComposer get batchId {
    final $$BatchesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.batchId,
        referencedTable: $db.batches,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BatchesTableFilterComposer(
              $db: $db,
              $table: $db.batches,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$WarehousesTableFilterComposer get warehouseId {
    final $$WarehousesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.warehouseId,
        referencedTable: $db.warehouses,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WarehousesTableFilterComposer(
              $db: $db,
              $table: $db.warehouses,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TanksTableFilterComposer get tankId {
    final $$TanksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tankId,
        referencedTable: $db.tanks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TanksTableFilterComposer(
              $db: $db,
              $table: $db.tanks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$StockLedgerTableOrderingComposer
    extends Composer<_$AppDatabase, $StockLedgerTable> {
  $$StockLedgerTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get voucherId => $composableBuilder(
      column: $table.voucherId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get voucherType => $composableBuilder(
      column: $table.voucherType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get qtyIn => $composableBuilder(
      column: $table.qtyIn, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get qtyOut => $composableBuilder(
      column: $table.qtyOut, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get unitCost => $composableBuilder(
      column: $table.unitCost, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get transactionDate => $composableBuilder(
      column: $table.transactionDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get narration => $composableBuilder(
      column: $table.narration, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$ItemsTableOrderingComposer get itemId {
    final $$ItemsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableOrderingComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$BatchesTableOrderingComposer get batchId {
    final $$BatchesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.batchId,
        referencedTable: $db.batches,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BatchesTableOrderingComposer(
              $db: $db,
              $table: $db.batches,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$WarehousesTableOrderingComposer get warehouseId {
    final $$WarehousesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.warehouseId,
        referencedTable: $db.warehouses,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WarehousesTableOrderingComposer(
              $db: $db,
              $table: $db.warehouses,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TanksTableOrderingComposer get tankId {
    final $$TanksTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tankId,
        referencedTable: $db.tanks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TanksTableOrderingComposer(
              $db: $db,
              $table: $db.tanks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$StockLedgerTableAnnotationComposer
    extends Composer<_$AppDatabase, $StockLedgerTable> {
  $$StockLedgerTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get voucherId =>
      $composableBuilder(column: $table.voucherId, builder: (column) => column);

  GeneratedColumn<String> get voucherType => $composableBuilder(
      column: $table.voucherType, builder: (column) => column);

  GeneratedColumn<double> get qtyIn =>
      $composableBuilder(column: $table.qtyIn, builder: (column) => column);

  GeneratedColumn<double> get qtyOut =>
      $composableBuilder(column: $table.qtyOut, builder: (column) => column);

  GeneratedColumn<double> get unitCost =>
      $composableBuilder(column: $table.unitCost, builder: (column) => column);

  GeneratedColumn<DateTime> get transactionDate => $composableBuilder(
      column: $table.transactionDate, builder: (column) => column);

  GeneratedColumn<String> get narration =>
      $composableBuilder(column: $table.narration, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$ItemsTableAnnotationComposer get itemId {
    final $$ItemsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableAnnotationComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$BatchesTableAnnotationComposer get batchId {
    final $$BatchesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.batchId,
        referencedTable: $db.batches,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BatchesTableAnnotationComposer(
              $db: $db,
              $table: $db.batches,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$WarehousesTableAnnotationComposer get warehouseId {
    final $$WarehousesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.warehouseId,
        referencedTable: $db.warehouses,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WarehousesTableAnnotationComposer(
              $db: $db,
              $table: $db.warehouses,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TanksTableAnnotationComposer get tankId {
    final $$TanksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tankId,
        referencedTable: $db.tanks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TanksTableAnnotationComposer(
              $db: $db,
              $table: $db.tanks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$StockLedgerTableTableManager extends RootTableManager<
    _$AppDatabase,
    $StockLedgerTable,
    StockLedgerData,
    $$StockLedgerTableFilterComposer,
    $$StockLedgerTableOrderingComposer,
    $$StockLedgerTableAnnotationComposer,
    $$StockLedgerTableCreateCompanionBuilder,
    $$StockLedgerTableUpdateCompanionBuilder,
    (StockLedgerData, $$StockLedgerTableReferences),
    StockLedgerData,
    PrefetchHooks Function(
        {bool itemId, bool batchId, bool warehouseId, bool tankId})> {
  $$StockLedgerTableTableManager(_$AppDatabase db, $StockLedgerTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StockLedgerTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StockLedgerTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StockLedgerTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> voucherId = const Value.absent(),
            Value<String> voucherType = const Value.absent(),
            Value<int> itemId = const Value.absent(),
            Value<int?> batchId = const Value.absent(),
            Value<int?> warehouseId = const Value.absent(),
            Value<int?> tankId = const Value.absent(),
            Value<double> qtyIn = const Value.absent(),
            Value<double> qtyOut = const Value.absent(),
            Value<double?> unitCost = const Value.absent(),
            Value<DateTime> transactionDate = const Value.absent(),
            Value<String?> narration = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              StockLedgerCompanion(
            id: id,
            voucherId: voucherId,
            voucherType: voucherType,
            itemId: itemId,
            batchId: batchId,
            warehouseId: warehouseId,
            tankId: tankId,
            qtyIn: qtyIn,
            qtyOut: qtyOut,
            unitCost: unitCost,
            transactionDate: transactionDate,
            narration: narration,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> voucherId = const Value.absent(),
            required String voucherType,
            required int itemId,
            Value<int?> batchId = const Value.absent(),
            Value<int?> warehouseId = const Value.absent(),
            Value<int?> tankId = const Value.absent(),
            Value<double> qtyIn = const Value.absent(),
            Value<double> qtyOut = const Value.absent(),
            Value<double?> unitCost = const Value.absent(),
            required DateTime transactionDate,
            Value<String?> narration = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              StockLedgerCompanion.insert(
            id: id,
            voucherId: voucherId,
            voucherType: voucherType,
            itemId: itemId,
            batchId: batchId,
            warehouseId: warehouseId,
            tankId: tankId,
            qtyIn: qtyIn,
            qtyOut: qtyOut,
            unitCost: unitCost,
            transactionDate: transactionDate,
            narration: narration,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$StockLedgerTable, StockLedgerData>(table),
                    $$StockLedgerTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {itemId = false,
              batchId = false,
              warehouseId = false,
              tankId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (itemId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.itemId,
                    referencedTable:
                        $$StockLedgerTableReferences._itemIdTable(db),
                    referencedColumn:
                        $$StockLedgerTableReferences._itemIdTable(db).id,
                  ) as T;
                }
                if (batchId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.batchId,
                    referencedTable:
                        $$StockLedgerTableReferences._batchIdTable(db),
                    referencedColumn:
                        $$StockLedgerTableReferences._batchIdTable(db).id,
                  ) as T;
                }
                if (warehouseId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.warehouseId,
                    referencedTable:
                        $$StockLedgerTableReferences._warehouseIdTable(db),
                    referencedColumn:
                        $$StockLedgerTableReferences._warehouseIdTable(db).id,
                  ) as T;
                }
                if (tankId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.tankId,
                    referencedTable:
                        $$StockLedgerTableReferences._tankIdTable(db),
                    referencedColumn:
                        $$StockLedgerTableReferences._tankIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$StockLedgerTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $StockLedgerTable,
    StockLedgerData,
    $$StockLedgerTableFilterComposer,
    $$StockLedgerTableOrderingComposer,
    $$StockLedgerTableAnnotationComposer,
    $$StockLedgerTableCreateCompanionBuilder,
    $$StockLedgerTableUpdateCompanionBuilder,
    (StockLedgerData, $$StockLedgerTableReferences),
    StockLedgerData,
    PrefetchHooks Function(
        {bool itemId, bool batchId, bool warehouseId, bool tankId})>;
typedef $$ProductionOrdersTableCreateCompanionBuilder
    = ProductionOrdersCompanion Function({
  Value<int> id,
  required String orderNo,
  required int recipeId,
  required double targetQty,
  required String targetUnit,
  Value<double?> plannedOverrun,
  Value<String> status,
  Value<int?> mixingTankId,
  Value<int?> agingTankId,
  Value<DateTime?> startDate,
  Value<DateTime?> endDate,
  Value<double?> actualMixQty,
  Value<double?> actualFinishedQty,
  Value<double?> actualOverrun,
  Value<double?> actualYield,
  Value<double> totalMaterialCost,
  Value<String?> notes,
  Value<DateTime> createdAt,
});
typedef $$ProductionOrdersTableUpdateCompanionBuilder
    = ProductionOrdersCompanion Function({
  Value<int> id,
  Value<String> orderNo,
  Value<int> recipeId,
  Value<double> targetQty,
  Value<String> targetUnit,
  Value<double?> plannedOverrun,
  Value<String> status,
  Value<int?> mixingTankId,
  Value<int?> agingTankId,
  Value<DateTime?> startDate,
  Value<DateTime?> endDate,
  Value<double?> actualMixQty,
  Value<double?> actualFinishedQty,
  Value<double?> actualOverrun,
  Value<double?> actualYield,
  Value<double> totalMaterialCost,
  Value<String?> notes,
  Value<DateTime> createdAt,
});

final class $$ProductionOrdersTableReferences extends BaseReferences<
    _$AppDatabase, $ProductionOrdersTable, ProductionOrder> {
  $$ProductionOrdersTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $RecipesTable _recipeIdTable(_$AppDatabase db) =>
      db.recipes.createAlias('production_orders__recipe_id__recipes__id');

  $$RecipesTableProcessedTableManager get recipeId {
    final $_column = $_itemColumn<int>('recipe_id')!;

    final manager = $$RecipesTableTableManager($_db, $_db.recipes)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_recipeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $TanksTable _mixingTankIdTable(_$AppDatabase db) =>
      db.tanks.createAlias('production_orders__mixing_tank_id__tanks__id');

  $$TanksTableProcessedTableManager? get mixingTankId {
    final $_column = $_itemColumn<int>('mixing_tank_id');
    if ($_column == null) return null;
    final manager = $$TanksTableTableManager($_db, $_db.tanks)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_mixingTankIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $TanksTable _agingTankIdTable(_$AppDatabase db) =>
      db.tanks.createAlias('production_orders__aging_tank_id__tanks__id');

  $$TanksTableProcessedTableManager? get agingTankId {
    final $_column = $_itemColumn<int>('aging_tank_id');
    if ($_column == null) return null;
    final manager = $$TanksTableTableManager($_db, $_db.tanks)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_agingTankIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$ProductionIssuesTable,
      List<ProductionIssue>> _productionIssuesRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.productionIssues,
          aliasName:
              'production_orders__id__production_issues__production_order_id');

  $$ProductionIssuesTableProcessedTableManager get productionIssuesRefs {
    final manager =
        $$ProductionIssuesTableTableManager($_db, $_db.productionIssues).filter(
            (f) => f.productionOrderId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_productionIssuesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ProductionReceiptsTable,
      List<ProductionReceipt>> _productionReceiptsRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.productionReceipts,
          aliasName:
              'production_orders__id__production_receipts__production_order_id');

  $$ProductionReceiptsTableProcessedTableManager get productionReceiptsRefs {
    final manager = $$ProductionReceiptsTableTableManager(
            $_db, $_db.productionReceipts)
        .filter(
            (f) => f.productionOrderId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_productionReceiptsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ProductionOrdersTableFilterComposer
    extends Composer<_$AppDatabase, $ProductionOrdersTable> {
  $$ProductionOrdersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get orderNo => $composableBuilder(
      column: $table.orderNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get targetQty => $composableBuilder(
      column: $table.targetQty, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get targetUnit => $composableBuilder(
      column: $table.targetUnit, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get plannedOverrun => $composableBuilder(
      column: $table.plannedOverrun,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get startDate => $composableBuilder(
      column: $table.startDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get endDate => $composableBuilder(
      column: $table.endDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get actualMixQty => $composableBuilder(
      column: $table.actualMixQty, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get actualFinishedQty => $composableBuilder(
      column: $table.actualFinishedQty,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get actualOverrun => $composableBuilder(
      column: $table.actualOverrun, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get actualYield => $composableBuilder(
      column: $table.actualYield, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalMaterialCost => $composableBuilder(
      column: $table.totalMaterialCost,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$RecipesTableFilterComposer get recipeId {
    final $$RecipesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.recipeId,
        referencedTable: $db.recipes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RecipesTableFilterComposer(
              $db: $db,
              $table: $db.recipes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TanksTableFilterComposer get mixingTankId {
    final $$TanksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.mixingTankId,
        referencedTable: $db.tanks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TanksTableFilterComposer(
              $db: $db,
              $table: $db.tanks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TanksTableFilterComposer get agingTankId {
    final $$TanksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.agingTankId,
        referencedTable: $db.tanks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TanksTableFilterComposer(
              $db: $db,
              $table: $db.tanks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> productionIssuesRefs(
      Expression<bool> Function($$ProductionIssuesTableFilterComposer f) f) {
    final $$ProductionIssuesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.productionIssues,
        getReferencedColumn: (t) => t.productionOrderId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionIssuesTableFilterComposer(
              $db: $db,
              $table: $db.productionIssues,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> productionReceiptsRefs(
      Expression<bool> Function($$ProductionReceiptsTableFilterComposer f) f) {
    final $$ProductionReceiptsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.productionReceipts,
        getReferencedColumn: (t) => t.productionOrderId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionReceiptsTableFilterComposer(
              $db: $db,
              $table: $db.productionReceipts,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ProductionOrdersTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductionOrdersTable> {
  $$ProductionOrdersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get orderNo => $composableBuilder(
      column: $table.orderNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get targetQty => $composableBuilder(
      column: $table.targetQty, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get targetUnit => $composableBuilder(
      column: $table.targetUnit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get plannedOverrun => $composableBuilder(
      column: $table.plannedOverrun,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get startDate => $composableBuilder(
      column: $table.startDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get endDate => $composableBuilder(
      column: $table.endDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get actualMixQty => $composableBuilder(
      column: $table.actualMixQty,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get actualFinishedQty => $composableBuilder(
      column: $table.actualFinishedQty,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get actualOverrun => $composableBuilder(
      column: $table.actualOverrun,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get actualYield => $composableBuilder(
      column: $table.actualYield, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalMaterialCost => $composableBuilder(
      column: $table.totalMaterialCost,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$RecipesTableOrderingComposer get recipeId {
    final $$RecipesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.recipeId,
        referencedTable: $db.recipes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RecipesTableOrderingComposer(
              $db: $db,
              $table: $db.recipes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TanksTableOrderingComposer get mixingTankId {
    final $$TanksTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.mixingTankId,
        referencedTable: $db.tanks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TanksTableOrderingComposer(
              $db: $db,
              $table: $db.tanks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TanksTableOrderingComposer get agingTankId {
    final $$TanksTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.agingTankId,
        referencedTable: $db.tanks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TanksTableOrderingComposer(
              $db: $db,
              $table: $db.tanks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProductionOrdersTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductionOrdersTable> {
  $$ProductionOrdersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get orderNo =>
      $composableBuilder(column: $table.orderNo, builder: (column) => column);

  GeneratedColumn<double> get targetQty =>
      $composableBuilder(column: $table.targetQty, builder: (column) => column);

  GeneratedColumn<String> get targetUnit => $composableBuilder(
      column: $table.targetUnit, builder: (column) => column);

  GeneratedColumn<double> get plannedOverrun => $composableBuilder(
      column: $table.plannedOverrun, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get startDate =>
      $composableBuilder(column: $table.startDate, builder: (column) => column);

  GeneratedColumn<DateTime> get endDate =>
      $composableBuilder(column: $table.endDate, builder: (column) => column);

  GeneratedColumn<double> get actualMixQty => $composableBuilder(
      column: $table.actualMixQty, builder: (column) => column);

  GeneratedColumn<double> get actualFinishedQty => $composableBuilder(
      column: $table.actualFinishedQty, builder: (column) => column);

  GeneratedColumn<double> get actualOverrun => $composableBuilder(
      column: $table.actualOverrun, builder: (column) => column);

  GeneratedColumn<double> get actualYield => $composableBuilder(
      column: $table.actualYield, builder: (column) => column);

  GeneratedColumn<double> get totalMaterialCost => $composableBuilder(
      column: $table.totalMaterialCost, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$RecipesTableAnnotationComposer get recipeId {
    final $$RecipesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.recipeId,
        referencedTable: $db.recipes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RecipesTableAnnotationComposer(
              $db: $db,
              $table: $db.recipes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TanksTableAnnotationComposer get mixingTankId {
    final $$TanksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.mixingTankId,
        referencedTable: $db.tanks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TanksTableAnnotationComposer(
              $db: $db,
              $table: $db.tanks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TanksTableAnnotationComposer get agingTankId {
    final $$TanksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.agingTankId,
        referencedTable: $db.tanks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TanksTableAnnotationComposer(
              $db: $db,
              $table: $db.tanks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> productionIssuesRefs<T extends Object>(
      Expression<T> Function($$ProductionIssuesTableAnnotationComposer a) f) {
    final $$ProductionIssuesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.productionIssues,
        getReferencedColumn: (t) => t.productionOrderId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionIssuesTableAnnotationComposer(
              $db: $db,
              $table: $db.productionIssues,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> productionReceiptsRefs<T extends Object>(
      Expression<T> Function($$ProductionReceiptsTableAnnotationComposer a) f) {
    final $$ProductionReceiptsTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.productionReceipts,
            getReferencedColumn: (t) => t.productionOrderId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$ProductionReceiptsTableAnnotationComposer(
                  $db: $db,
                  $table: $db.productionReceipts,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$ProductionOrdersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProductionOrdersTable,
    ProductionOrder,
    $$ProductionOrdersTableFilterComposer,
    $$ProductionOrdersTableOrderingComposer,
    $$ProductionOrdersTableAnnotationComposer,
    $$ProductionOrdersTableCreateCompanionBuilder,
    $$ProductionOrdersTableUpdateCompanionBuilder,
    (ProductionOrder, $$ProductionOrdersTableReferences),
    ProductionOrder,
    PrefetchHooks Function(
        {bool recipeId,
        bool mixingTankId,
        bool agingTankId,
        bool productionIssuesRefs,
        bool productionReceiptsRefs})> {
  $$ProductionOrdersTableTableManager(
      _$AppDatabase db, $ProductionOrdersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductionOrdersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductionOrdersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductionOrdersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> orderNo = const Value.absent(),
            Value<int> recipeId = const Value.absent(),
            Value<double> targetQty = const Value.absent(),
            Value<String> targetUnit = const Value.absent(),
            Value<double?> plannedOverrun = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<int?> mixingTankId = const Value.absent(),
            Value<int?> agingTankId = const Value.absent(),
            Value<DateTime?> startDate = const Value.absent(),
            Value<DateTime?> endDate = const Value.absent(),
            Value<double?> actualMixQty = const Value.absent(),
            Value<double?> actualFinishedQty = const Value.absent(),
            Value<double?> actualOverrun = const Value.absent(),
            Value<double?> actualYield = const Value.absent(),
            Value<double> totalMaterialCost = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              ProductionOrdersCompanion(
            id: id,
            orderNo: orderNo,
            recipeId: recipeId,
            targetQty: targetQty,
            targetUnit: targetUnit,
            plannedOverrun: plannedOverrun,
            status: status,
            mixingTankId: mixingTankId,
            agingTankId: agingTankId,
            startDate: startDate,
            endDate: endDate,
            actualMixQty: actualMixQty,
            actualFinishedQty: actualFinishedQty,
            actualOverrun: actualOverrun,
            actualYield: actualYield,
            totalMaterialCost: totalMaterialCost,
            notes: notes,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String orderNo,
            required int recipeId,
            required double targetQty,
            required String targetUnit,
            Value<double?> plannedOverrun = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<int?> mixingTankId = const Value.absent(),
            Value<int?> agingTankId = const Value.absent(),
            Value<DateTime?> startDate = const Value.absent(),
            Value<DateTime?> endDate = const Value.absent(),
            Value<double?> actualMixQty = const Value.absent(),
            Value<double?> actualFinishedQty = const Value.absent(),
            Value<double?> actualOverrun = const Value.absent(),
            Value<double?> actualYield = const Value.absent(),
            Value<double> totalMaterialCost = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              ProductionOrdersCompanion.insert(
            id: id,
            orderNo: orderNo,
            recipeId: recipeId,
            targetQty: targetQty,
            targetUnit: targetUnit,
            plannedOverrun: plannedOverrun,
            status: status,
            mixingTankId: mixingTankId,
            agingTankId: agingTankId,
            startDate: startDate,
            endDate: endDate,
            actualMixQty: actualMixQty,
            actualFinishedQty: actualFinishedQty,
            actualOverrun: actualOverrun,
            actualYield: actualYield,
            totalMaterialCost: totalMaterialCost,
            notes: notes,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$ProductionOrdersTable, ProductionOrder>(table),
                    $$ProductionOrdersTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {recipeId = false,
              mixingTankId = false,
              agingTankId = false,
              productionIssuesRefs = false,
              productionReceiptsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (productionIssuesRefs) db.productionIssues,
                if (productionReceiptsRefs) db.productionReceipts
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (recipeId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.recipeId,
                    referencedTable:
                        $$ProductionOrdersTableReferences._recipeIdTable(db),
                    referencedColumn:
                        $$ProductionOrdersTableReferences._recipeIdTable(db).id,
                  ) as T;
                }
                if (mixingTankId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.mixingTankId,
                    referencedTable: $$ProductionOrdersTableReferences
                        ._mixingTankIdTable(db),
                    referencedColumn: $$ProductionOrdersTableReferences
                        ._mixingTankIdTable(db)
                        .id,
                  ) as T;
                }
                if (agingTankId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.agingTankId,
                    referencedTable:
                        $$ProductionOrdersTableReferences._agingTankIdTable(db),
                    referencedColumn: $$ProductionOrdersTableReferences
                        ._agingTankIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (productionIssuesRefs)
                    await $_getPrefetchedDataByColumns<
                            ProductionOrder,
                            $ProductionOrdersTable,
                            ProductionIssue,
                            $ProductionIssuesTable>(
                        currentTable: table,
                        referencedTable: $$ProductionOrdersTableReferences
                            ._productionIssuesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ProductionOrdersTableReferences(db, table, p0)
                                .productionIssuesRefs,
                        currentColumn: 'id',
                        referencedColumn: 'production_order_id',
                        typedResults: items),
                  if (productionReceiptsRefs)
                    await $_getPrefetchedDataByColumns<
                            ProductionOrder,
                            $ProductionOrdersTable,
                            ProductionReceipt,
                            $ProductionReceiptsTable>(
                        currentTable: table,
                        referencedTable: $$ProductionOrdersTableReferences
                            ._productionReceiptsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ProductionOrdersTableReferences(db, table, p0)
                                .productionReceiptsRefs,
                        currentColumn: 'id',
                        referencedColumn: 'production_order_id',
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ProductionOrdersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ProductionOrdersTable,
    ProductionOrder,
    $$ProductionOrdersTableFilterComposer,
    $$ProductionOrdersTableOrderingComposer,
    $$ProductionOrdersTableAnnotationComposer,
    $$ProductionOrdersTableCreateCompanionBuilder,
    $$ProductionOrdersTableUpdateCompanionBuilder,
    (ProductionOrder, $$ProductionOrdersTableReferences),
    ProductionOrder,
    PrefetchHooks Function(
        {bool recipeId,
        bool mixingTankId,
        bool agingTankId,
        bool productionIssuesRefs,
        bool productionReceiptsRefs})>;
typedef $$ProductionIssuesTableCreateCompanionBuilder
    = ProductionIssuesCompanion Function({
  Value<int> id,
  required int productionOrderId,
  required int itemId,
  Value<int?> batchId,
  required double qty,
  Value<String?> unit,
  Value<double?> unitCost,
  Value<int?> tankId,
  Value<DateTime> issuedAt,
});
typedef $$ProductionIssuesTableUpdateCompanionBuilder
    = ProductionIssuesCompanion Function({
  Value<int> id,
  Value<int> productionOrderId,
  Value<int> itemId,
  Value<int?> batchId,
  Value<double> qty,
  Value<String?> unit,
  Value<double?> unitCost,
  Value<int?> tankId,
  Value<DateTime> issuedAt,
});

final class $$ProductionIssuesTableReferences extends BaseReferences<
    _$AppDatabase, $ProductionIssuesTable, ProductionIssue> {
  $$ProductionIssuesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ProductionOrdersTable _productionOrderIdTable(_$AppDatabase db) =>
      db.productionOrders.createAlias(
          'production_issues__production_order_id__production_orders__id');

  $$ProductionOrdersTableProcessedTableManager get productionOrderId {
    final $_column = $_itemColumn<int>('production_order_id')!;

    final manager =
        $$ProductionOrdersTableTableManager($_db, $_db.productionOrders)
            .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_productionOrderIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $ItemsTable _itemIdTable(_$AppDatabase db) =>
      db.items.createAlias('production_issues__item_id__items__id');

  $$ItemsTableProcessedTableManager get itemId {
    final $_column = $_itemColumn<int>('item_id')!;

    final manager = $$ItemsTableTableManager($_db, $_db.items)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $BatchesTable _batchIdTable(_$AppDatabase db) =>
      db.batches.createAlias('production_issues__batch_id__batches__id');

  $$BatchesTableProcessedTableManager? get batchId {
    final $_column = $_itemColumn<int>('batch_id');
    if ($_column == null) return null;
    final manager = $$BatchesTableTableManager($_db, $_db.batches)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_batchIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $TanksTable _tankIdTable(_$AppDatabase db) =>
      db.tanks.createAlias('production_issues__tank_id__tanks__id');

  $$TanksTableProcessedTableManager? get tankId {
    final $_column = $_itemColumn<int>('tank_id');
    if ($_column == null) return null;
    final manager = $$TanksTableTableManager($_db, $_db.tanks)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_tankIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ProductionIssuesTableFilterComposer
    extends Composer<_$AppDatabase, $ProductionIssuesTable> {
  $$ProductionIssuesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get qty => $composableBuilder(
      column: $table.qty, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get unit => $composableBuilder(
      column: $table.unit, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get unitCost => $composableBuilder(
      column: $table.unitCost, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get issuedAt => $composableBuilder(
      column: $table.issuedAt, builder: (column) => ColumnFilters(column));

  $$ProductionOrdersTableFilterComposer get productionOrderId {
    final $$ProductionOrdersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.productionOrderId,
        referencedTable: $db.productionOrders,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionOrdersTableFilterComposer(
              $db: $db,
              $table: $db.productionOrders,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ItemsTableFilterComposer get itemId {
    final $$ItemsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableFilterComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$BatchesTableFilterComposer get batchId {
    final $$BatchesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.batchId,
        referencedTable: $db.batches,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BatchesTableFilterComposer(
              $db: $db,
              $table: $db.batches,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TanksTableFilterComposer get tankId {
    final $$TanksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tankId,
        referencedTable: $db.tanks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TanksTableFilterComposer(
              $db: $db,
              $table: $db.tanks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProductionIssuesTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductionIssuesTable> {
  $$ProductionIssuesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get qty => $composableBuilder(
      column: $table.qty, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get unit => $composableBuilder(
      column: $table.unit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get unitCost => $composableBuilder(
      column: $table.unitCost, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get issuedAt => $composableBuilder(
      column: $table.issuedAt, builder: (column) => ColumnOrderings(column));

  $$ProductionOrdersTableOrderingComposer get productionOrderId {
    final $$ProductionOrdersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.productionOrderId,
        referencedTable: $db.productionOrders,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionOrdersTableOrderingComposer(
              $db: $db,
              $table: $db.productionOrders,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ItemsTableOrderingComposer get itemId {
    final $$ItemsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableOrderingComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$BatchesTableOrderingComposer get batchId {
    final $$BatchesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.batchId,
        referencedTable: $db.batches,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BatchesTableOrderingComposer(
              $db: $db,
              $table: $db.batches,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TanksTableOrderingComposer get tankId {
    final $$TanksTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tankId,
        referencedTable: $db.tanks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TanksTableOrderingComposer(
              $db: $db,
              $table: $db.tanks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProductionIssuesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductionIssuesTable> {
  $$ProductionIssuesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get qty =>
      $composableBuilder(column: $table.qty, builder: (column) => column);

  GeneratedColumn<String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<double> get unitCost =>
      $composableBuilder(column: $table.unitCost, builder: (column) => column);

  GeneratedColumn<DateTime> get issuedAt =>
      $composableBuilder(column: $table.issuedAt, builder: (column) => column);

  $$ProductionOrdersTableAnnotationComposer get productionOrderId {
    final $$ProductionOrdersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.productionOrderId,
        referencedTable: $db.productionOrders,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionOrdersTableAnnotationComposer(
              $db: $db,
              $table: $db.productionOrders,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ItemsTableAnnotationComposer get itemId {
    final $$ItemsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableAnnotationComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$BatchesTableAnnotationComposer get batchId {
    final $$BatchesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.batchId,
        referencedTable: $db.batches,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BatchesTableAnnotationComposer(
              $db: $db,
              $table: $db.batches,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TanksTableAnnotationComposer get tankId {
    final $$TanksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tankId,
        referencedTable: $db.tanks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TanksTableAnnotationComposer(
              $db: $db,
              $table: $db.tanks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProductionIssuesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProductionIssuesTable,
    ProductionIssue,
    $$ProductionIssuesTableFilterComposer,
    $$ProductionIssuesTableOrderingComposer,
    $$ProductionIssuesTableAnnotationComposer,
    $$ProductionIssuesTableCreateCompanionBuilder,
    $$ProductionIssuesTableUpdateCompanionBuilder,
    (ProductionIssue, $$ProductionIssuesTableReferences),
    ProductionIssue,
    PrefetchHooks Function(
        {bool productionOrderId, bool itemId, bool batchId, bool tankId})> {
  $$ProductionIssuesTableTableManager(
      _$AppDatabase db, $ProductionIssuesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductionIssuesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductionIssuesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductionIssuesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> productionOrderId = const Value.absent(),
            Value<int> itemId = const Value.absent(),
            Value<int?> batchId = const Value.absent(),
            Value<double> qty = const Value.absent(),
            Value<String?> unit = const Value.absent(),
            Value<double?> unitCost = const Value.absent(),
            Value<int?> tankId = const Value.absent(),
            Value<DateTime> issuedAt = const Value.absent(),
          }) =>
              ProductionIssuesCompanion(
            id: id,
            productionOrderId: productionOrderId,
            itemId: itemId,
            batchId: batchId,
            qty: qty,
            unit: unit,
            unitCost: unitCost,
            tankId: tankId,
            issuedAt: issuedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int productionOrderId,
            required int itemId,
            Value<int?> batchId = const Value.absent(),
            required double qty,
            Value<String?> unit = const Value.absent(),
            Value<double?> unitCost = const Value.absent(),
            Value<int?> tankId = const Value.absent(),
            Value<DateTime> issuedAt = const Value.absent(),
          }) =>
              ProductionIssuesCompanion.insert(
            id: id,
            productionOrderId: productionOrderId,
            itemId: itemId,
            batchId: batchId,
            qty: qty,
            unit: unit,
            unitCost: unitCost,
            tankId: tankId,
            issuedAt: issuedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$ProductionIssuesTable, ProductionIssue>(table),
                    $$ProductionIssuesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {productionOrderId = false,
              itemId = false,
              batchId = false,
              tankId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (productionOrderId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.productionOrderId,
                    referencedTable: $$ProductionIssuesTableReferences
                        ._productionOrderIdTable(db),
                    referencedColumn: $$ProductionIssuesTableReferences
                        ._productionOrderIdTable(db)
                        .id,
                  ) as T;
                }
                if (itemId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.itemId,
                    referencedTable:
                        $$ProductionIssuesTableReferences._itemIdTable(db),
                    referencedColumn:
                        $$ProductionIssuesTableReferences._itemIdTable(db).id,
                  ) as T;
                }
                if (batchId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.batchId,
                    referencedTable:
                        $$ProductionIssuesTableReferences._batchIdTable(db),
                    referencedColumn:
                        $$ProductionIssuesTableReferences._batchIdTable(db).id,
                  ) as T;
                }
                if (tankId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.tankId,
                    referencedTable:
                        $$ProductionIssuesTableReferences._tankIdTable(db),
                    referencedColumn:
                        $$ProductionIssuesTableReferences._tankIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ProductionIssuesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ProductionIssuesTable,
    ProductionIssue,
    $$ProductionIssuesTableFilterComposer,
    $$ProductionIssuesTableOrderingComposer,
    $$ProductionIssuesTableAnnotationComposer,
    $$ProductionIssuesTableCreateCompanionBuilder,
    $$ProductionIssuesTableUpdateCompanionBuilder,
    (ProductionIssue, $$ProductionIssuesTableReferences),
    ProductionIssue,
    PrefetchHooks Function(
        {bool productionOrderId, bool itemId, bool batchId, bool tankId})>;
typedef $$ProductionReceiptsTableCreateCompanionBuilder
    = ProductionReceiptsCompanion Function({
  Value<int> id,
  required int productionOrderId,
  required int itemId,
  required String batchNo,
  required double qty,
  Value<String?> unit,
  Value<double?> overrunPercent,
  Value<double?> unitCost,
  Value<DateTime?> mfgDate,
  Value<DateTime?> expiryDate,
  Value<int?> warehouseId,
  Value<DateTime> receivedAt,
});
typedef $$ProductionReceiptsTableUpdateCompanionBuilder
    = ProductionReceiptsCompanion Function({
  Value<int> id,
  Value<int> productionOrderId,
  Value<int> itemId,
  Value<String> batchNo,
  Value<double> qty,
  Value<String?> unit,
  Value<double?> overrunPercent,
  Value<double?> unitCost,
  Value<DateTime?> mfgDate,
  Value<DateTime?> expiryDate,
  Value<int?> warehouseId,
  Value<DateTime> receivedAt,
});

final class $$ProductionReceiptsTableReferences extends BaseReferences<
    _$AppDatabase, $ProductionReceiptsTable, ProductionReceipt> {
  $$ProductionReceiptsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ProductionOrdersTable _productionOrderIdTable(_$AppDatabase db) =>
      db.productionOrders.createAlias(
          'production_receipts__production_order_id__production_orders__id');

  $$ProductionOrdersTableProcessedTableManager get productionOrderId {
    final $_column = $_itemColumn<int>('production_order_id')!;

    final manager =
        $$ProductionOrdersTableTableManager($_db, $_db.productionOrders)
            .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_productionOrderIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $ItemsTable _itemIdTable(_$AppDatabase db) =>
      db.items.createAlias('production_receipts__item_id__items__id');

  $$ItemsTableProcessedTableManager get itemId {
    final $_column = $_itemColumn<int>('item_id')!;

    final manager = $$ItemsTableTableManager($_db, $_db.items)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $WarehousesTable _warehouseIdTable(_$AppDatabase db) => db.warehouses
      .createAlias('production_receipts__warehouse_id__warehouses__id');

  $$WarehousesTableProcessedTableManager? get warehouseId {
    final $_column = $_itemColumn<int>('warehouse_id');
    if ($_column == null) return null;
    final manager = $$WarehousesTableTableManager($_db, $_db.warehouses)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_warehouseIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ProductionReceiptsTableFilterComposer
    extends Composer<_$AppDatabase, $ProductionReceiptsTable> {
  $$ProductionReceiptsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get batchNo => $composableBuilder(
      column: $table.batchNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get qty => $composableBuilder(
      column: $table.qty, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get unit => $composableBuilder(
      column: $table.unit, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get overrunPercent => $composableBuilder(
      column: $table.overrunPercent,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get unitCost => $composableBuilder(
      column: $table.unitCost, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get mfgDate => $composableBuilder(
      column: $table.mfgDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get expiryDate => $composableBuilder(
      column: $table.expiryDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get receivedAt => $composableBuilder(
      column: $table.receivedAt, builder: (column) => ColumnFilters(column));

  $$ProductionOrdersTableFilterComposer get productionOrderId {
    final $$ProductionOrdersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.productionOrderId,
        referencedTable: $db.productionOrders,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionOrdersTableFilterComposer(
              $db: $db,
              $table: $db.productionOrders,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ItemsTableFilterComposer get itemId {
    final $$ItemsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableFilterComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$WarehousesTableFilterComposer get warehouseId {
    final $$WarehousesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.warehouseId,
        referencedTable: $db.warehouses,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WarehousesTableFilterComposer(
              $db: $db,
              $table: $db.warehouses,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProductionReceiptsTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductionReceiptsTable> {
  $$ProductionReceiptsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get batchNo => $composableBuilder(
      column: $table.batchNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get qty => $composableBuilder(
      column: $table.qty, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get unit => $composableBuilder(
      column: $table.unit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get overrunPercent => $composableBuilder(
      column: $table.overrunPercent,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get unitCost => $composableBuilder(
      column: $table.unitCost, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get mfgDate => $composableBuilder(
      column: $table.mfgDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get expiryDate => $composableBuilder(
      column: $table.expiryDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get receivedAt => $composableBuilder(
      column: $table.receivedAt, builder: (column) => ColumnOrderings(column));

  $$ProductionOrdersTableOrderingComposer get productionOrderId {
    final $$ProductionOrdersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.productionOrderId,
        referencedTable: $db.productionOrders,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionOrdersTableOrderingComposer(
              $db: $db,
              $table: $db.productionOrders,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ItemsTableOrderingComposer get itemId {
    final $$ItemsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableOrderingComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$WarehousesTableOrderingComposer get warehouseId {
    final $$WarehousesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.warehouseId,
        referencedTable: $db.warehouses,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WarehousesTableOrderingComposer(
              $db: $db,
              $table: $db.warehouses,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProductionReceiptsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductionReceiptsTable> {
  $$ProductionReceiptsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get batchNo =>
      $composableBuilder(column: $table.batchNo, builder: (column) => column);

  GeneratedColumn<double> get qty =>
      $composableBuilder(column: $table.qty, builder: (column) => column);

  GeneratedColumn<String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<double> get overrunPercent => $composableBuilder(
      column: $table.overrunPercent, builder: (column) => column);

  GeneratedColumn<double> get unitCost =>
      $composableBuilder(column: $table.unitCost, builder: (column) => column);

  GeneratedColumn<DateTime> get mfgDate =>
      $composableBuilder(column: $table.mfgDate, builder: (column) => column);

  GeneratedColumn<DateTime> get expiryDate => $composableBuilder(
      column: $table.expiryDate, builder: (column) => column);

  GeneratedColumn<DateTime> get receivedAt => $composableBuilder(
      column: $table.receivedAt, builder: (column) => column);

  $$ProductionOrdersTableAnnotationComposer get productionOrderId {
    final $$ProductionOrdersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.productionOrderId,
        referencedTable: $db.productionOrders,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductionOrdersTableAnnotationComposer(
              $db: $db,
              $table: $db.productionOrders,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$ItemsTableAnnotationComposer get itemId {
    final $$ItemsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $db.items,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ItemsTableAnnotationComposer(
              $db: $db,
              $table: $db.items,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$WarehousesTableAnnotationComposer get warehouseId {
    final $$WarehousesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.warehouseId,
        referencedTable: $db.warehouses,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WarehousesTableAnnotationComposer(
              $db: $db,
              $table: $db.warehouses,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProductionReceiptsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProductionReceiptsTable,
    ProductionReceipt,
    $$ProductionReceiptsTableFilterComposer,
    $$ProductionReceiptsTableOrderingComposer,
    $$ProductionReceiptsTableAnnotationComposer,
    $$ProductionReceiptsTableCreateCompanionBuilder,
    $$ProductionReceiptsTableUpdateCompanionBuilder,
    (ProductionReceipt, $$ProductionReceiptsTableReferences),
    ProductionReceipt,
    PrefetchHooks Function(
        {bool productionOrderId, bool itemId, bool warehouseId})> {
  $$ProductionReceiptsTableTableManager(
      _$AppDatabase db, $ProductionReceiptsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductionReceiptsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductionReceiptsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductionReceiptsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> productionOrderId = const Value.absent(),
            Value<int> itemId = const Value.absent(),
            Value<String> batchNo = const Value.absent(),
            Value<double> qty = const Value.absent(),
            Value<String?> unit = const Value.absent(),
            Value<double?> overrunPercent = const Value.absent(),
            Value<double?> unitCost = const Value.absent(),
            Value<DateTime?> mfgDate = const Value.absent(),
            Value<DateTime?> expiryDate = const Value.absent(),
            Value<int?> warehouseId = const Value.absent(),
            Value<DateTime> receivedAt = const Value.absent(),
          }) =>
              ProductionReceiptsCompanion(
            id: id,
            productionOrderId: productionOrderId,
            itemId: itemId,
            batchNo: batchNo,
            qty: qty,
            unit: unit,
            overrunPercent: overrunPercent,
            unitCost: unitCost,
            mfgDate: mfgDate,
            expiryDate: expiryDate,
            warehouseId: warehouseId,
            receivedAt: receivedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int productionOrderId,
            required int itemId,
            required String batchNo,
            required double qty,
            Value<String?> unit = const Value.absent(),
            Value<double?> overrunPercent = const Value.absent(),
            Value<double?> unitCost = const Value.absent(),
            Value<DateTime?> mfgDate = const Value.absent(),
            Value<DateTime?> expiryDate = const Value.absent(),
            Value<int?> warehouseId = const Value.absent(),
            Value<DateTime> receivedAt = const Value.absent(),
          }) =>
              ProductionReceiptsCompanion.insert(
            id: id,
            productionOrderId: productionOrderId,
            itemId: itemId,
            batchNo: batchNo,
            qty: qty,
            unit: unit,
            overrunPercent: overrunPercent,
            unitCost: unitCost,
            mfgDate: mfgDate,
            expiryDate: expiryDate,
            warehouseId: warehouseId,
            receivedAt: receivedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$ProductionReceiptsTable, ProductionReceipt>(
                        table),
                    $$ProductionReceiptsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {productionOrderId = false,
              itemId = false,
              warehouseId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (productionOrderId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.productionOrderId,
                    referencedTable: $$ProductionReceiptsTableReferences
                        ._productionOrderIdTable(db),
                    referencedColumn: $$ProductionReceiptsTableReferences
                        ._productionOrderIdTable(db)
                        .id,
                  ) as T;
                }
                if (itemId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.itemId,
                    referencedTable:
                        $$ProductionReceiptsTableReferences._itemIdTable(db),
                    referencedColumn:
                        $$ProductionReceiptsTableReferences._itemIdTable(db).id,
                  ) as T;
                }
                if (warehouseId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.warehouseId,
                    referencedTable: $$ProductionReceiptsTableReferences
                        ._warehouseIdTable(db),
                    referencedColumn: $$ProductionReceiptsTableReferences
                        ._warehouseIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ProductionReceiptsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ProductionReceiptsTable,
    ProductionReceipt,
    $$ProductionReceiptsTableFilterComposer,
    $$ProductionReceiptsTableOrderingComposer,
    $$ProductionReceiptsTableAnnotationComposer,
    $$ProductionReceiptsTableCreateCompanionBuilder,
    $$ProductionReceiptsTableUpdateCompanionBuilder,
    (ProductionReceipt, $$ProductionReceiptsTableReferences),
    ProductionReceipt,
    PrefetchHooks Function(
        {bool productionOrderId, bool itemId, bool warehouseId})>;
typedef $$VouchersTableCreateCompanionBuilder = VouchersCompanion Function({
  Value<int> id,
  required String voucherNo,
  required String voucherType,
  Value<int?> partyId,
  required DateTime voucherDate,
  required double totalAmount,
  Value<String?> narration,
  Value<DateTime> createdAt,
});
typedef $$VouchersTableUpdateCompanionBuilder = VouchersCompanion Function({
  Value<int> id,
  Value<String> voucherNo,
  Value<String> voucherType,
  Value<int?> partyId,
  Value<DateTime> voucherDate,
  Value<double> totalAmount,
  Value<String?> narration,
  Value<DateTime> createdAt,
});

final class $$VouchersTableReferences
    extends BaseReferences<_$AppDatabase, $VouchersTable, Voucher> {
  $$VouchersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PartiesTable _partyIdTable(_$AppDatabase db) =>
      db.parties.createAlias('vouchers__party_id__parties__id');

  $$PartiesTableProcessedTableManager? get partyId {
    final $_column = $_itemColumn<int>('party_id');
    if ($_column == null) return null;
    final manager = $$PartiesTableTableManager($_db, $_db.parties)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_partyIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$VoucherLinesTable, List<VoucherLine>>
      _voucherLinesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.voucherLines,
              aliasName: 'vouchers__id__voucher_lines__voucher_id');

  $$VoucherLinesTableProcessedTableManager get voucherLinesRefs {
    final manager = $$VoucherLinesTableTableManager($_db, $_db.voucherLines)
        .filter((f) => f.voucherId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_voucherLinesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$VouchersTableFilterComposer
    extends Composer<_$AppDatabase, $VouchersTable> {
  $$VouchersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get voucherNo => $composableBuilder(
      column: $table.voucherNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get voucherType => $composableBuilder(
      column: $table.voucherType, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get voucherDate => $composableBuilder(
      column: $table.voucherDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalAmount => $composableBuilder(
      column: $table.totalAmount, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get narration => $composableBuilder(
      column: $table.narration, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$PartiesTableFilterComposer get partyId {
    final $$PartiesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.partyId,
        referencedTable: $db.parties,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PartiesTableFilterComposer(
              $db: $db,
              $table: $db.parties,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> voucherLinesRefs(
      Expression<bool> Function($$VoucherLinesTableFilterComposer f) f) {
    final $$VoucherLinesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.voucherLines,
        getReferencedColumn: (t) => t.voucherId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VoucherLinesTableFilterComposer(
              $db: $db,
              $table: $db.voucherLines,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$VouchersTableOrderingComposer
    extends Composer<_$AppDatabase, $VouchersTable> {
  $$VouchersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get voucherNo => $composableBuilder(
      column: $table.voucherNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get voucherType => $composableBuilder(
      column: $table.voucherType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get voucherDate => $composableBuilder(
      column: $table.voucherDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalAmount => $composableBuilder(
      column: $table.totalAmount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get narration => $composableBuilder(
      column: $table.narration, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$PartiesTableOrderingComposer get partyId {
    final $$PartiesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.partyId,
        referencedTable: $db.parties,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PartiesTableOrderingComposer(
              $db: $db,
              $table: $db.parties,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$VouchersTableAnnotationComposer
    extends Composer<_$AppDatabase, $VouchersTable> {
  $$VouchersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get voucherNo =>
      $composableBuilder(column: $table.voucherNo, builder: (column) => column);

  GeneratedColumn<String> get voucherType => $composableBuilder(
      column: $table.voucherType, builder: (column) => column);

  GeneratedColumn<DateTime> get voucherDate => $composableBuilder(
      column: $table.voucherDate, builder: (column) => column);

  GeneratedColumn<double> get totalAmount => $composableBuilder(
      column: $table.totalAmount, builder: (column) => column);

  GeneratedColumn<String> get narration =>
      $composableBuilder(column: $table.narration, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$PartiesTableAnnotationComposer get partyId {
    final $$PartiesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.partyId,
        referencedTable: $db.parties,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PartiesTableAnnotationComposer(
              $db: $db,
              $table: $db.parties,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> voucherLinesRefs<T extends Object>(
      Expression<T> Function($$VoucherLinesTableAnnotationComposer a) f) {
    final $$VoucherLinesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.voucherLines,
        getReferencedColumn: (t) => t.voucherId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VoucherLinesTableAnnotationComposer(
              $db: $db,
              $table: $db.voucherLines,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$VouchersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $VouchersTable,
    Voucher,
    $$VouchersTableFilterComposer,
    $$VouchersTableOrderingComposer,
    $$VouchersTableAnnotationComposer,
    $$VouchersTableCreateCompanionBuilder,
    $$VouchersTableUpdateCompanionBuilder,
    (Voucher, $$VouchersTableReferences),
    Voucher,
    PrefetchHooks Function({bool partyId, bool voucherLinesRefs})> {
  $$VouchersTableTableManager(_$AppDatabase db, $VouchersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$VouchersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$VouchersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$VouchersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> voucherNo = const Value.absent(),
            Value<String> voucherType = const Value.absent(),
            Value<int?> partyId = const Value.absent(),
            Value<DateTime> voucherDate = const Value.absent(),
            Value<double> totalAmount = const Value.absent(),
            Value<String?> narration = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              VouchersCompanion(
            id: id,
            voucherNo: voucherNo,
            voucherType: voucherType,
            partyId: partyId,
            voucherDate: voucherDate,
            totalAmount: totalAmount,
            narration: narration,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String voucherNo,
            required String voucherType,
            Value<int?> partyId = const Value.absent(),
            required DateTime voucherDate,
            required double totalAmount,
            Value<String?> narration = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              VouchersCompanion.insert(
            id: id,
            voucherNo: voucherNo,
            voucherType: voucherType,
            partyId: partyId,
            voucherDate: voucherDate,
            totalAmount: totalAmount,
            narration: narration,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$VouchersTable, Voucher>(table),
                    $$VouchersTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({partyId = false, voucherLinesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (voucherLinesRefs) db.voucherLines],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (partyId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.partyId,
                    referencedTable:
                        $$VouchersTableReferences._partyIdTable(db),
                    referencedColumn:
                        $$VouchersTableReferences._partyIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (voucherLinesRefs)
                    await $_getPrefetchedDataByColumns<Voucher, $VouchersTable,
                            VoucherLine, $VoucherLinesTable>(
                        currentTable: table,
                        referencedTable: $$VouchersTableReferences
                            ._voucherLinesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$VouchersTableReferences(db, table, p0)
                                .voucherLinesRefs,
                        currentColumn: 'id',
                        referencedColumn: 'voucher_id',
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$VouchersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $VouchersTable,
    Voucher,
    $$VouchersTableFilterComposer,
    $$VouchersTableOrderingComposer,
    $$VouchersTableAnnotationComposer,
    $$VouchersTableCreateCompanionBuilder,
    $$VouchersTableUpdateCompanionBuilder,
    (Voucher, $$VouchersTableReferences),
    Voucher,
    PrefetchHooks Function({bool partyId, bool voucherLinesRefs})>;
typedef $$VoucherLinesTableCreateCompanionBuilder = VoucherLinesCompanion
    Function({
  Value<int> id,
  required int voucherId,
  required String ledgerName,
  Value<double> debit,
  Value<double> credit,
});
typedef $$VoucherLinesTableUpdateCompanionBuilder = VoucherLinesCompanion
    Function({
  Value<int> id,
  Value<int> voucherId,
  Value<String> ledgerName,
  Value<double> debit,
  Value<double> credit,
});

final class $$VoucherLinesTableReferences
    extends BaseReferences<_$AppDatabase, $VoucherLinesTable, VoucherLine> {
  $$VoucherLinesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $VouchersTable _voucherIdTable(_$AppDatabase db) =>
      db.vouchers.createAlias('voucher_lines__voucher_id__vouchers__id');

  $$VouchersTableProcessedTableManager get voucherId {
    final $_column = $_itemColumn<int>('voucher_id')!;

    final manager = $$VouchersTableTableManager($_db, $_db.vouchers)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_voucherIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$VoucherLinesTableFilterComposer
    extends Composer<_$AppDatabase, $VoucherLinesTable> {
  $$VoucherLinesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ledgerName => $composableBuilder(
      column: $table.ledgerName, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get debit => $composableBuilder(
      column: $table.debit, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get credit => $composableBuilder(
      column: $table.credit, builder: (column) => ColumnFilters(column));

  $$VouchersTableFilterComposer get voucherId {
    final $$VouchersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.voucherId,
        referencedTable: $db.vouchers,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VouchersTableFilterComposer(
              $db: $db,
              $table: $db.vouchers,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$VoucherLinesTableOrderingComposer
    extends Composer<_$AppDatabase, $VoucherLinesTable> {
  $$VoucherLinesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ledgerName => $composableBuilder(
      column: $table.ledgerName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get debit => $composableBuilder(
      column: $table.debit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get credit => $composableBuilder(
      column: $table.credit, builder: (column) => ColumnOrderings(column));

  $$VouchersTableOrderingComposer get voucherId {
    final $$VouchersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.voucherId,
        referencedTable: $db.vouchers,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VouchersTableOrderingComposer(
              $db: $db,
              $table: $db.vouchers,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$VoucherLinesTableAnnotationComposer
    extends Composer<_$AppDatabase, $VoucherLinesTable> {
  $$VoucherLinesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get ledgerName => $composableBuilder(
      column: $table.ledgerName, builder: (column) => column);

  GeneratedColumn<double> get debit =>
      $composableBuilder(column: $table.debit, builder: (column) => column);

  GeneratedColumn<double> get credit =>
      $composableBuilder(column: $table.credit, builder: (column) => column);

  $$VouchersTableAnnotationComposer get voucherId {
    final $$VouchersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.voucherId,
        referencedTable: $db.vouchers,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VouchersTableAnnotationComposer(
              $db: $db,
              $table: $db.vouchers,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$VoucherLinesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $VoucherLinesTable,
    VoucherLine,
    $$VoucherLinesTableFilterComposer,
    $$VoucherLinesTableOrderingComposer,
    $$VoucherLinesTableAnnotationComposer,
    $$VoucherLinesTableCreateCompanionBuilder,
    $$VoucherLinesTableUpdateCompanionBuilder,
    (VoucherLine, $$VoucherLinesTableReferences),
    VoucherLine,
    PrefetchHooks Function({bool voucherId})> {
  $$VoucherLinesTableTableManager(_$AppDatabase db, $VoucherLinesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$VoucherLinesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$VoucherLinesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$VoucherLinesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> voucherId = const Value.absent(),
            Value<String> ledgerName = const Value.absent(),
            Value<double> debit = const Value.absent(),
            Value<double> credit = const Value.absent(),
          }) =>
              VoucherLinesCompanion(
            id: id,
            voucherId: voucherId,
            ledgerName: ledgerName,
            debit: debit,
            credit: credit,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int voucherId,
            required String ledgerName,
            Value<double> debit = const Value.absent(),
            Value<double> credit = const Value.absent(),
          }) =>
              VoucherLinesCompanion.insert(
            id: id,
            voucherId: voucherId,
            ledgerName: ledgerName,
            debit: debit,
            credit: credit,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable<$VoucherLinesTable, VoucherLine>(table),
                    $$VoucherLinesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({voucherId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (voucherId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.voucherId,
                    referencedTable:
                        $$VoucherLinesTableReferences._voucherIdTable(db),
                    referencedColumn:
                        $$VoucherLinesTableReferences._voucherIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$VoucherLinesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $VoucherLinesTable,
    VoucherLine,
    $$VoucherLinesTableFilterComposer,
    $$VoucherLinesTableOrderingComposer,
    $$VoucherLinesTableAnnotationComposer,
    $$VoucherLinesTableCreateCompanionBuilder,
    $$VoucherLinesTableUpdateCompanionBuilder,
    (VoucherLine, $$VoucherLinesTableReferences),
    VoucherLine,
    PrefetchHooks Function({bool voucherId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ItemsTableTableManager get items =>
      $$ItemsTableTableManager(_db, _db.items);
  $$UnitsTableTableManager get units =>
      $$UnitsTableTableManager(_db, _db.units);
  $$UnitConversionsTableTableManager get unitConversions =>
      $$UnitConversionsTableTableManager(_db, _db.unitConversions);
  $$WarehousesTableTableManager get warehouses =>
      $$WarehousesTableTableManager(_db, _db.warehouses);
  $$TanksTableTableManager get tanks =>
      $$TanksTableTableManager(_db, _db.tanks);
  $$PartiesTableTableManager get parties =>
      $$PartiesTableTableManager(_db, _db.parties);
  $$RecipesTableTableManager get recipes =>
      $$RecipesTableTableManager(_db, _db.recipes);
  $$RecipeLinesTableTableManager get recipeLines =>
      $$RecipeLinesTableTableManager(_db, _db.recipeLines);
  $$BatchesTableTableManager get batches =>
      $$BatchesTableTableManager(_db, _db.batches);
  $$StockLedgerTableTableManager get stockLedger =>
      $$StockLedgerTableTableManager(_db, _db.stockLedger);
  $$ProductionOrdersTableTableManager get productionOrders =>
      $$ProductionOrdersTableTableManager(_db, _db.productionOrders);
  $$ProductionIssuesTableTableManager get productionIssues =>
      $$ProductionIssuesTableTableManager(_db, _db.productionIssues);
  $$ProductionReceiptsTableTableManager get productionReceipts =>
      $$ProductionReceiptsTableTableManager(_db, _db.productionReceipts);
  $$VouchersTableTableManager get vouchers =>
      $$VouchersTableTableManager(_db, _db.vouchers);
  $$VoucherLinesTableTableManager get voucherLines =>
      $$VoucherLinesTableTableManager(_db, _db.voucherLines);
}
