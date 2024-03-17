/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../protocol.dart' as _i2;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class UserProfile extends _i1.TableRow {
  UserProfile._({
    int? id,
    required this.user,
    required this.photos,
  }) : super(id);

  factory UserProfile({
    int? id,
    required _i2.User user,
    required List<_i2.Photos> photos,
  }) = _UserProfileImpl;

  factory UserProfile.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return UserProfile(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      user:
          serializationManager.deserialize<_i2.User>(jsonSerialization['user']),
      photos: serializationManager
          .deserialize<List<_i2.Photos>>(jsonSerialization['photos']),
    );
  }

  static final t = UserProfileTable();

  static const db = UserProfileRepository._();

  _i2.User user;

  List<_i2.Photos> photos;

  @override
  _i1.Table get table => t;

  UserProfile copyWith({
    int? id,
    _i2.User? user,
    List<_i2.Photos>? photos,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'user': user.toJson(),
      'photos': photos.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'user': user,
      'photos': photos,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'user': user.allToJson(),
      'photos': photos.toJson(valueToJson: (v) => v.allToJson()),
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
      case 'user':
        user = value;
        return;
      case 'photos':
        photos = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<UserProfile>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserProfileTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<UserProfile>(
      where: where != null ? where(UserProfile.t) : null,
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
  static Future<UserProfile?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserProfileTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<UserProfile>(
      where: where != null ? where(UserProfile.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<UserProfile?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<UserProfile>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserProfileTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<UserProfile>(
      where: where(UserProfile.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    UserProfile row, {
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
    UserProfile row, {
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
    UserProfile row, {
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
    _i1.WhereExpressionBuilder<UserProfileTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<UserProfile>(
      where: where != null ? where(UserProfile.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static UserProfileInclude include() {
    return UserProfileInclude._();
  }

  static UserProfileIncludeList includeList({
    _i1.WhereExpressionBuilder<UserProfileTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserProfileTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserProfileTable>? orderByList,
    UserProfileInclude? include,
  }) {
    return UserProfileIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserProfile.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(UserProfile.t),
      include: include,
    );
  }
}

class _Undefined {}

class _UserProfileImpl extends UserProfile {
  _UserProfileImpl({
    int? id,
    required _i2.User user,
    required List<_i2.Photos> photos,
  }) : super._(
          id: id,
          user: user,
          photos: photos,
        );

  @override
  UserProfile copyWith({
    Object? id = _Undefined,
    _i2.User? user,
    List<_i2.Photos>? photos,
  }) {
    return UserProfile(
      id: id is int? ? id : this.id,
      user: user ?? this.user.copyWith(),
      photos: photos ?? this.photos.clone(),
    );
  }
}

class UserProfileTable extends _i1.Table {
  UserProfileTable({super.tableRelation}) : super(tableName: 'user_profile') {
    user = _i1.ColumnSerializable(
      'user',
      this,
    );
    photos = _i1.ColumnSerializable(
      'photos',
      this,
    );
  }

  late final _i1.ColumnSerializable user;

  late final _i1.ColumnSerializable photos;

  @override
  List<_i1.Column> get columns => [
        id,
        user,
        photos,
      ];
}

@Deprecated('Use UserProfileTable.t instead.')
UserProfileTable tUserProfile = UserProfileTable();

class UserProfileInclude extends _i1.IncludeObject {
  UserProfileInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => UserProfile.t;
}

class UserProfileIncludeList extends _i1.IncludeList {
  UserProfileIncludeList._({
    _i1.WhereExpressionBuilder<UserProfileTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UserProfile.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => UserProfile.t;
}

class UserProfileRepository {
  const UserProfileRepository._();

  Future<List<UserProfile>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserProfileTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserProfileTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserProfileTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<UserProfile>(
      where: where?.call(UserProfile.t),
      orderBy: orderBy?.call(UserProfile.t),
      orderByList: orderByList?.call(UserProfile.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<UserProfile?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserProfileTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserProfileTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserProfileTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<UserProfile>(
      where: where?.call(UserProfile.t),
      orderBy: orderBy?.call(UserProfile.t),
      orderByList: orderByList?.call(UserProfile.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<UserProfile?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<UserProfile>(
      id,
      transaction: transaction,
    );
  }

  Future<List<UserProfile>> insert(
    _i1.Session session,
    List<UserProfile> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<UserProfile>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserProfile> insertRow(
    _i1.Session session,
    UserProfile row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<UserProfile>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UserProfile>> update(
    _i1.Session session,
    List<UserProfile> rows, {
    _i1.ColumnSelections<UserProfileTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<UserProfile>(
      rows,
      columns: columns?.call(UserProfile.t),
      transaction: transaction,
    );
  }

  Future<UserProfile> updateRow(
    _i1.Session session,
    UserProfile row, {
    _i1.ColumnSelections<UserProfileTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<UserProfile>(
      row,
      columns: columns?.call(UserProfile.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<UserProfile> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<UserProfile>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    UserProfile row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<UserProfile>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserProfileTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<UserProfile>(
      where: where(UserProfile.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserProfileTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<UserProfile>(
      where: where?.call(UserProfile.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
