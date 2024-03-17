/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class EventTypes extends _i1.TableRow {
  EventTypes._({
    int? id,
    required this.title,
    required this.description,
    required this.icon,
  }) : super(id);

  factory EventTypes({
    int? id,
    required String title,
    required String description,
    required String icon,
  }) = _EventTypesImpl;

  factory EventTypes.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return EventTypes(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      icon: serializationManager.deserialize<String>(jsonSerialization['icon']),
    );
  }

  static final t = EventTypesTable();

  static const db = EventTypesRepository._();

  String title;

  String description;

  String icon;

  @override
  _i1.Table get table => t;

  EventTypes copyWith({
    int? id,
    String? title,
    String? description,
    String? icon,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'description': description,
      'icon': icon,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'icon': icon,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'description': description,
      'icon': icon,
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
      case 'title':
        title = value;
        return;
      case 'description':
        description = value;
        return;
      case 'icon':
        icon = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<EventTypes>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTypesTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<EventTypes>(
      where: where != null ? where(EventTypes.t) : null,
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
  static Future<EventTypes?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTypesTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<EventTypes>(
      where: where != null ? where(EventTypes.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<EventTypes?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<EventTypes>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EventTypesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<EventTypes>(
      where: where(EventTypes.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    EventTypes row, {
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
    EventTypes row, {
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
    EventTypes row, {
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
    _i1.WhereExpressionBuilder<EventTypesTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<EventTypes>(
      where: where != null ? where(EventTypes.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static EventTypesInclude include() {
    return EventTypesInclude._();
  }

  static EventTypesIncludeList includeList({
    _i1.WhereExpressionBuilder<EventTypesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventTypesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTypesTable>? orderByList,
    EventTypesInclude? include,
  }) {
    return EventTypesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(EventTypes.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(EventTypes.t),
      include: include,
    );
  }
}

class _Undefined {}

class _EventTypesImpl extends EventTypes {
  _EventTypesImpl({
    int? id,
    required String title,
    required String description,
    required String icon,
  }) : super._(
          id: id,
          title: title,
          description: description,
          icon: icon,
        );

  @override
  EventTypes copyWith({
    Object? id = _Undefined,
    String? title,
    String? description,
    String? icon,
  }) {
    return EventTypes(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      icon: icon ?? this.icon,
    );
  }
}

class EventTypesTable extends _i1.Table {
  EventTypesTable({super.tableRelation}) : super(tableName: 'event_types') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    icon = _i1.ColumnString(
      'icon',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnString icon;

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        description,
        icon,
      ];
}

@Deprecated('Use EventTypesTable.t instead.')
EventTypesTable tEventTypes = EventTypesTable();

class EventTypesInclude extends _i1.IncludeObject {
  EventTypesInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => EventTypes.t;
}

class EventTypesIncludeList extends _i1.IncludeList {
  EventTypesIncludeList._({
    _i1.WhereExpressionBuilder<EventTypesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(EventTypes.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => EventTypes.t;
}

class EventTypesRepository {
  const EventTypesRepository._();

  Future<List<EventTypes>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTypesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventTypesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTypesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<EventTypes>(
      where: where?.call(EventTypes.t),
      orderBy: orderBy?.call(EventTypes.t),
      orderByList: orderByList?.call(EventTypes.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<EventTypes?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTypesTable>? where,
    int? offset,
    _i1.OrderByBuilder<EventTypesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTypesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<EventTypes>(
      where: where?.call(EventTypes.t),
      orderBy: orderBy?.call(EventTypes.t),
      orderByList: orderByList?.call(EventTypes.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<EventTypes?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<EventTypes>(
      id,
      transaction: transaction,
    );
  }

  Future<List<EventTypes>> insert(
    _i1.Session session,
    List<EventTypes> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<EventTypes>(
      rows,
      transaction: transaction,
    );
  }

  Future<EventTypes> insertRow(
    _i1.Session session,
    EventTypes row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<EventTypes>(
      row,
      transaction: transaction,
    );
  }

  Future<List<EventTypes>> update(
    _i1.Session session,
    List<EventTypes> rows, {
    _i1.ColumnSelections<EventTypesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<EventTypes>(
      rows,
      columns: columns?.call(EventTypes.t),
      transaction: transaction,
    );
  }

  Future<EventTypes> updateRow(
    _i1.Session session,
    EventTypes row, {
    _i1.ColumnSelections<EventTypesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<EventTypes>(
      row,
      columns: columns?.call(EventTypes.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<EventTypes> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<EventTypes>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    EventTypes row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<EventTypes>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EventTypesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<EventTypes>(
      where: where(EventTypes.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTypesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<EventTypes>(
      where: where?.call(EventTypes.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
