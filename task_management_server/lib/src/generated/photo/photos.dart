/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Photos extends _i1.TableRow {
  Photos._({
    int? id,
    required this.filePath,
  }) : super(id);

  factory Photos({
    int? id,
    required String filePath,
  }) = _PhotosImpl;

  factory Photos.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Photos(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      filePath: serializationManager
          .deserialize<String>(jsonSerialization['filePath']),
    );
  }

  static final t = PhotosTable();

  static const db = PhotosRepository._();

  String filePath;

  @override
  _i1.Table get table => t;

  Photos copyWith({
    int? id,
    String? filePath,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'filePath': filePath,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'filePath': filePath,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'filePath': filePath,
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
      case 'filePath':
        filePath = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Photos>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PhotosTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Photos>(
      where: where != null ? where(Photos.t) : null,
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
  static Future<Photos?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PhotosTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Photos>(
      where: where != null ? where(Photos.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Photos?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Photos>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PhotosTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Photos>(
      where: where(Photos.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Photos row, {
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
    Photos row, {
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
    Photos row, {
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
    _i1.WhereExpressionBuilder<PhotosTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Photos>(
      where: where != null ? where(Photos.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static PhotosInclude include() {
    return PhotosInclude._();
  }

  static PhotosIncludeList includeList({
    _i1.WhereExpressionBuilder<PhotosTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PhotosTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PhotosTable>? orderByList,
    PhotosInclude? include,
  }) {
    return PhotosIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Photos.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Photos.t),
      include: include,
    );
  }
}

class _Undefined {}

class _PhotosImpl extends Photos {
  _PhotosImpl({
    int? id,
    required String filePath,
  }) : super._(
          id: id,
          filePath: filePath,
        );

  @override
  Photos copyWith({
    Object? id = _Undefined,
    String? filePath,
  }) {
    return Photos(
      id: id is int? ? id : this.id,
      filePath: filePath ?? this.filePath,
    );
  }
}

class PhotosTable extends _i1.Table {
  PhotosTable({super.tableRelation}) : super(tableName: 'photos') {
    filePath = _i1.ColumnString(
      'filePath',
      this,
    );
  }

  late final _i1.ColumnString filePath;

  @override
  List<_i1.Column> get columns => [
        id,
        filePath,
      ];
}

@Deprecated('Use PhotosTable.t instead.')
PhotosTable tPhotos = PhotosTable();

class PhotosInclude extends _i1.IncludeObject {
  PhotosInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Photos.t;
}

class PhotosIncludeList extends _i1.IncludeList {
  PhotosIncludeList._({
    _i1.WhereExpressionBuilder<PhotosTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Photos.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Photos.t;
}

class PhotosRepository {
  const PhotosRepository._();

  Future<List<Photos>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PhotosTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PhotosTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PhotosTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Photos>(
      where: where?.call(Photos.t),
      orderBy: orderBy?.call(Photos.t),
      orderByList: orderByList?.call(Photos.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Photos?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PhotosTable>? where,
    int? offset,
    _i1.OrderByBuilder<PhotosTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PhotosTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Photos>(
      where: where?.call(Photos.t),
      orderBy: orderBy?.call(Photos.t),
      orderByList: orderByList?.call(Photos.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Photos?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Photos>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Photos>> insert(
    _i1.Session session,
    List<Photos> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Photos>(
      rows,
      transaction: transaction,
    );
  }

  Future<Photos> insertRow(
    _i1.Session session,
    Photos row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Photos>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Photos>> update(
    _i1.Session session,
    List<Photos> rows, {
    _i1.ColumnSelections<PhotosTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Photos>(
      rows,
      columns: columns?.call(Photos.t),
      transaction: transaction,
    );
  }

  Future<Photos> updateRow(
    _i1.Session session,
    Photos row, {
    _i1.ColumnSelections<PhotosTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Photos>(
      row,
      columns: columns?.call(Photos.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Photos> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Photos>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Photos row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Photos>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PhotosTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Photos>(
      where: where(Photos.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PhotosTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Photos>(
      where: where?.call(Photos.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
