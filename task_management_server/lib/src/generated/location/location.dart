/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Location extends _i1.TableRow {
  Location._({
    int? id,
    required this.latitude,
    required this.longitude,
  }) : super(id);

  factory Location({
    int? id,
    required double latitude,
    required double longitude,
  }) = _LocationImpl;

  factory Location.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Location(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      latitude: serializationManager
          .deserialize<double>(jsonSerialization['latitude']),
      longitude: serializationManager
          .deserialize<double>(jsonSerialization['longitude']),
    );
  }

  static final t = LocationTable();

  static const db = LocationRepository._();

  double latitude;

  double longitude;

  @override
  _i1.Table get table => t;

  Location copyWith({
    int? id,
    double? latitude,
    double? longitude,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'latitude':
        latitude = value;
        return;
      case 'longitude':
        longitude = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Location>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Location>(
      where: where != null ? where(Location.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Location?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Location>(
      where: where != null ? where(Location.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Location?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Location>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LocationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Location>(
      where: where(Location.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Location row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Location row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Location row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Location>(
      where: where != null ? where(Location.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static LocationInclude include() {
    return LocationInclude._();
  }

  static LocationIncludeList includeList({
    _i1.WhereExpressionBuilder<LocationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LocationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocationTable>? orderByList,
    LocationInclude? include,
  }) {
    return LocationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Location.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Location.t),
      include: include,
    );
  }
}

class _Undefined {}

class _LocationImpl extends Location {
  _LocationImpl({
    int? id,
    required double latitude,
    required double longitude,
  }) : super._(
          id: id,
          latitude: latitude,
          longitude: longitude,
        );

  @override
  Location copyWith({
    Object? id = _Undefined,
    double? latitude,
    double? longitude,
  }) {
    return Location(
      id: id is int? ? id : this.id,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }
}

class LocationTable extends _i1.Table {
  LocationTable({super.tableRelation}) : super(tableName: 'locations') {
    latitude = _i1.ColumnDouble(
      'latitude',
      this,
    );
    longitude = _i1.ColumnDouble(
      'longitude',
      this,
    );
  }

  late final _i1.ColumnDouble latitude;

  late final _i1.ColumnDouble longitude;

  @override
  List<_i1.Column> get columns => [
        id,
        latitude,
        longitude,
      ];
}

@Deprecated('Use LocationTable.t instead.')
LocationTable tLocation = LocationTable();

class LocationInclude extends _i1.IncludeObject {
  LocationInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Location.t;
}

class LocationIncludeList extends _i1.IncludeList {
  LocationIncludeList._({
    _i1.WhereExpressionBuilder<LocationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Location.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Location.t;
}

class LocationRepository {
  const LocationRepository._();

  Future<List<Location>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LocationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Location>(
      where: where?.call(Location.t),
      orderBy: orderBy?.call(Location.t),
      orderByList: orderByList?.call(Location.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Location?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTable>? where,
    int? offset,
    _i1.OrderByBuilder<LocationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Location>(
      where: where?.call(Location.t),
      orderBy: orderBy?.call(Location.t),
      orderByList: orderByList?.call(Location.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Location?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Location>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Location>> insert(
    _i1.Session session,
    List<Location> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Location>(
      rows,
      transaction: transaction,
    );
  }

  Future<Location> insertRow(
    _i1.Session session,
    Location row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Location>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Location>> update(
    _i1.Session session,
    List<Location> rows, {
    _i1.ColumnSelections<LocationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Location>(
      rows,
      columns: columns?.call(Location.t),
      transaction: transaction,
    );
  }

  Future<Location> updateRow(
    _i1.Session session,
    Location row, {
    _i1.ColumnSelections<LocationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Location>(
      row,
      columns: columns?.call(Location.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Location> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Location>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Location row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Location>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LocationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Location>(
      where: where(Location.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocationTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Location>(
      where: where?.call(Location.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
