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

abstract class Event extends _i1.TableRow {
  Event._({
    int? id,
    required this.date,
    required this.type,
    required this.title,
    required this.description,
    required this.photos,
    required this.location,
    required this.members,
  }) : super(id);

  factory Event({
    int? id,
    required DateTime date,
    required _i2.EventTypes type,
    required String title,
    required String description,
    required List<_i2.Photos> photos,
    required _i2.Location location,
    required List<_i2.User> members,
  }) = _EventImpl;

  factory Event.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Event(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      date:
          serializationManager.deserialize<DateTime>(jsonSerialization['date']),
      type: serializationManager
          .deserialize<_i2.EventTypes>(jsonSerialization['type']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      photos: serializationManager
          .deserialize<List<_i2.Photos>>(jsonSerialization['photos']),
      location: serializationManager
          .deserialize<_i2.Location>(jsonSerialization['location']),
      members: serializationManager
          .deserialize<List<_i2.User>>(jsonSerialization['members']),
    );
  }

  static final t = EventTable();

  static const db = EventRepository._();

  DateTime date;

  _i2.EventTypes type;

  String title;

  String description;

  List<_i2.Photos> photos;

  _i2.Location location;

  List<_i2.User> members;

  @override
  _i1.Table get table => t;

  Event copyWith({
    int? id,
    DateTime? date,
    _i2.EventTypes? type,
    String? title,
    String? description,
    List<_i2.Photos>? photos,
    _i2.Location? location,
    List<_i2.User>? members,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'type': type.toJson(),
      'title': title,
      'description': description,
      'photos': photos.toJson(valueToJson: (v) => v.toJson()),
      'location': location.toJson(),
      'members': members.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'date': date,
      'type': type,
      'title': title,
      'description': description,
      'photos': photos,
      'location': location,
      'members': members,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'date': date.toJson(),
      'type': type.allToJson(),
      'title': title,
      'description': description,
      'photos': photos.toJson(valueToJson: (v) => v.allToJson()),
      'location': location.allToJson(),
      'members': members.toJson(valueToJson: (v) => v.allToJson()),
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
      case 'date':
        date = value;
        return;
      case 'type':
        type = value;
        return;
      case 'title':
        title = value;
        return;
      case 'description':
        description = value;
        return;
      case 'photos':
        photos = value;
        return;
      case 'location':
        location = value;
        return;
      case 'members':
        members = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Event>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Event>(
      where: where != null ? where(Event.t) : null,
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
  static Future<Event?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Event>(
      where: where != null ? where(Event.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Event?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Event>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EventTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Event>(
      where: where(Event.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Event row, {
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
    Event row, {
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
    Event row, {
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
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Event>(
      where: where != null ? where(Event.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static EventInclude include() {
    return EventInclude._();
  }

  static EventIncludeList includeList({
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTable>? orderByList,
    EventInclude? include,
  }) {
    return EventIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Event.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Event.t),
      include: include,
    );
  }
}

class _Undefined {}

class _EventImpl extends Event {
  _EventImpl({
    int? id,
    required DateTime date,
    required _i2.EventTypes type,
    required String title,
    required String description,
    required List<_i2.Photos> photos,
    required _i2.Location location,
    required List<_i2.User> members,
  }) : super._(
          id: id,
          date: date,
          type: type,
          title: title,
          description: description,
          photos: photos,
          location: location,
          members: members,
        );

  @override
  Event copyWith({
    Object? id = _Undefined,
    DateTime? date,
    _i2.EventTypes? type,
    String? title,
    String? description,
    List<_i2.Photos>? photos,
    _i2.Location? location,
    List<_i2.User>? members,
  }) {
    return Event(
      id: id is int? ? id : this.id,
      date: date ?? this.date,
      type: type ?? this.type.copyWith(),
      title: title ?? this.title,
      description: description ?? this.description,
      photos: photos ?? this.photos.clone(),
      location: location ?? this.location.copyWith(),
      members: members ?? this.members.clone(),
    );
  }
}

class EventTable extends _i1.Table {
  EventTable({super.tableRelation}) : super(tableName: 'events') {
    date = _i1.ColumnDateTime(
      'date',
      this,
    );
    type = _i1.ColumnSerializable(
      'type',
      this,
    );
    title = _i1.ColumnString(
      'title',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    photos = _i1.ColumnSerializable(
      'photos',
      this,
    );
    location = _i1.ColumnSerializable(
      'location',
      this,
    );
    members = _i1.ColumnSerializable(
      'members',
      this,
    );
  }

  late final _i1.ColumnDateTime date;

  late final _i1.ColumnSerializable type;

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnSerializable photos;

  late final _i1.ColumnSerializable location;

  late final _i1.ColumnSerializable members;

  @override
  List<_i1.Column> get columns => [
        id,
        date,
        type,
        title,
        description,
        photos,
        location,
        members,
      ];
}

@Deprecated('Use EventTable.t instead.')
EventTable tEvent = EventTable();

class EventInclude extends _i1.IncludeObject {
  EventInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Event.t;
}

class EventIncludeList extends _i1.IncludeList {
  EventIncludeList._({
    _i1.WhereExpressionBuilder<EventTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Event.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Event.t;
}

class EventRepository {
  const EventRepository._();

  Future<List<Event>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Event>(
      where: where?.call(Event.t),
      orderBy: orderBy?.call(Event.t),
      orderByList: orderByList?.call(Event.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Event?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? offset,
    _i1.OrderByBuilder<EventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Event>(
      where: where?.call(Event.t),
      orderBy: orderBy?.call(Event.t),
      orderByList: orderByList?.call(Event.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Event?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Event>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Event>> insert(
    _i1.Session session,
    List<Event> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Event>(
      rows,
      transaction: transaction,
    );
  }

  Future<Event> insertRow(
    _i1.Session session,
    Event row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Event>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Event>> update(
    _i1.Session session,
    List<Event> rows, {
    _i1.ColumnSelections<EventTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Event>(
      rows,
      columns: columns?.call(Event.t),
      transaction: transaction,
    );
  }

  Future<Event> updateRow(
    _i1.Session session,
    Event row, {
    _i1.ColumnSelections<EventTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Event>(
      row,
      columns: columns?.call(Event.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Event> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Event>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Event row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Event>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EventTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Event>(
      where: where(Event.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Event>(
      where: where?.call(Event.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
