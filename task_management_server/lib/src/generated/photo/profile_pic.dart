/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class ProfilePhotos extends _i1.TableRow {
  ProfilePhotos._({
    int? id,
    required this.filePath,
  }) : super(id);

  factory ProfilePhotos({
    int? id,
    required String filePath,
  }) = _ProfilePhotosImpl;

  factory ProfilePhotos.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ProfilePhotos(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      filePath: serializationManager
          .deserialize<String>(jsonSerialization['filePath']),
    );
  }

  static final t = ProfilePhotosTable();

  static const db = ProfilePhotosRepository._();

  String filePath;

  @override
  _i1.Table get table => t;

  ProfilePhotos copyWith({
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
  static Future<List<ProfilePhotos>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProfilePhotosTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ProfilePhotos>(
      where: where != null ? where(ProfilePhotos.t) : null,
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
  static Future<ProfilePhotos?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProfilePhotosTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<ProfilePhotos>(
      where: where != null ? where(ProfilePhotos.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ProfilePhotos?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<ProfilePhotos>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ProfilePhotosTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ProfilePhotos>(
      where: where(ProfilePhotos.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ProfilePhotos row, {
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
    ProfilePhotos row, {
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
    ProfilePhotos row, {
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
    _i1.WhereExpressionBuilder<ProfilePhotosTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ProfilePhotos>(
      where: where != null ? where(ProfilePhotos.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ProfilePhotosInclude include() {
    return ProfilePhotosInclude._();
  }

  static ProfilePhotosIncludeList includeList({
    _i1.WhereExpressionBuilder<ProfilePhotosTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProfilePhotosTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProfilePhotosTable>? orderByList,
    ProfilePhotosInclude? include,
  }) {
    return ProfilePhotosIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ProfilePhotos.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ProfilePhotos.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ProfilePhotosImpl extends ProfilePhotos {
  _ProfilePhotosImpl({
    int? id,
    required String filePath,
  }) : super._(
          id: id,
          filePath: filePath,
        );

  @override
  ProfilePhotos copyWith({
    Object? id = _Undefined,
    String? filePath,
  }) {
    return ProfilePhotos(
      id: id is int? ? id : this.id,
      filePath: filePath ?? this.filePath,
    );
  }
}

class ProfilePhotosTable extends _i1.Table {
  ProfilePhotosTable({super.tableRelation})
      : super(tableName: 'profile_photos') {
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

@Deprecated('Use ProfilePhotosTable.t instead.')
ProfilePhotosTable tProfilePhotos = ProfilePhotosTable();

class ProfilePhotosInclude extends _i1.IncludeObject {
  ProfilePhotosInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => ProfilePhotos.t;
}

class ProfilePhotosIncludeList extends _i1.IncludeList {
  ProfilePhotosIncludeList._({
    _i1.WhereExpressionBuilder<ProfilePhotosTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ProfilePhotos.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ProfilePhotos.t;
}

class ProfilePhotosRepository {
  const ProfilePhotosRepository._();

  Future<List<ProfilePhotos>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProfilePhotosTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProfilePhotosTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProfilePhotosTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<ProfilePhotos>(
      where: where?.call(ProfilePhotos.t),
      orderBy: orderBy?.call(ProfilePhotos.t),
      orderByList: orderByList?.call(ProfilePhotos.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ProfilePhotos?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProfilePhotosTable>? where,
    int? offset,
    _i1.OrderByBuilder<ProfilePhotosTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProfilePhotosTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<ProfilePhotos>(
      where: where?.call(ProfilePhotos.t),
      orderBy: orderBy?.call(ProfilePhotos.t),
      orderByList: orderByList?.call(ProfilePhotos.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<ProfilePhotos?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<ProfilePhotos>(
      id,
      transaction: transaction,
    );
  }

  Future<List<ProfilePhotos>> insert(
    _i1.Session session,
    List<ProfilePhotos> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ProfilePhotos>(
      rows,
      transaction: transaction,
    );
  }

  Future<ProfilePhotos> insertRow(
    _i1.Session session,
    ProfilePhotos row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ProfilePhotos>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ProfilePhotos>> update(
    _i1.Session session,
    List<ProfilePhotos> rows, {
    _i1.ColumnSelections<ProfilePhotosTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ProfilePhotos>(
      rows,
      columns: columns?.call(ProfilePhotos.t),
      transaction: transaction,
    );
  }

  Future<ProfilePhotos> updateRow(
    _i1.Session session,
    ProfilePhotos row, {
    _i1.ColumnSelections<ProfilePhotosTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ProfilePhotos>(
      row,
      columns: columns?.call(ProfilePhotos.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ProfilePhotos> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ProfilePhotos>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ProfilePhotos row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ProfilePhotos>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ProfilePhotosTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ProfilePhotos>(
      where: where(ProfilePhotos.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProfilePhotosTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ProfilePhotos>(
      where: where?.call(ProfilePhotos.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
