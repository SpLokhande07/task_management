/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_server/module.dart' as _i3;
import 'events/event.dart' as _i4;
import 'events/event_types.dart' as _i5;
import 'example.dart' as _i6;
import 'location/location.dart' as _i7;
import 'photo/photos.dart' as _i8;
import 'photo/profile_pic.dart' as _i9;
import 'user_profile/user_profile.dart' as _i10;
import 'users/user.dart' as _i11;
import 'protocol.dart' as _i12;
export 'events/event.dart';
export 'events/event_types.dart';
export 'example.dart';
export 'location/location.dart';
export 'photo/photos.dart';
export 'photo/profile_pic.dart';
export 'user_profile/user_profile.dart';
export 'users/user.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'event_types',
      dartName: 'EventTypes',
      schema: 'public',
      module: 'task_management',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'event_types_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'icon',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'event_types_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'events',
      dartName: 'Event',
      schema: 'public',
      module: 'task_management',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'events_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'date',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'protocol:EventTypes',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'photos',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'List<protocol:Photos>',
        ),
        _i2.ColumnDefinition(
          name: 'location',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'protocol:Location',
        ),
        _i2.ColumnDefinition(
          name: 'members',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'List<protocol:User>',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'events_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'locations',
      dartName: 'Location',
      schema: 'public',
      module: 'task_management',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'locations_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'latitude',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'longitude',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'locations_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'photos',
      dartName: 'Photos',
      schema: 'public',
      module: 'task_management',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'photos_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'filePath',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'photos_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'profile_photos',
      dartName: 'ProfilePhotos',
      schema: 'public',
      module: 'task_management',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'profile_photos_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'filePath',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'profile_photos_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'user_profile',
      dartName: 'UserProfile',
      schema: 'public',
      module: 'task_management',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'user_profile_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'user',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'protocol:User',
        ),
        _i2.ColumnDefinition(
          name: 'photos',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'List<protocol:Photos>',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'user_profile_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'users',
      dartName: 'User',
      schema: 'public',
      module: 'task_management',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'users_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'fId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'firstName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'lastName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'dob',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'contactNo',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'photo',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'protocol:ProfilePhotos',
        ),
        _i2.ColumnDefinition(
          name: 'userInfo',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'module:auth:UserInfo',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'users_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i3.Protocol.targetTableDefinitions,
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i4.Event) {
      return _i4.Event.fromJson(data, this) as T;
    }
    if (t == _i5.EventTypes) {
      return _i5.EventTypes.fromJson(data, this) as T;
    }
    if (t == _i6.Example) {
      return _i6.Example.fromJson(data, this) as T;
    }
    if (t == _i7.Location) {
      return _i7.Location.fromJson(data, this) as T;
    }
    if (t == _i8.Photos) {
      return _i8.Photos.fromJson(data, this) as T;
    }
    if (t == _i9.ProfilePhotos) {
      return _i9.ProfilePhotos.fromJson(data, this) as T;
    }
    if (t == _i10.UserProfile) {
      return _i10.UserProfile.fromJson(data, this) as T;
    }
    if (t == _i11.User) {
      return _i11.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i4.Event?>()) {
      return (data != null ? _i4.Event.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.EventTypes?>()) {
      return (data != null ? _i5.EventTypes.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.Example?>()) {
      return (data != null ? _i6.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Location?>()) {
      return (data != null ? _i7.Location.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.Photos?>()) {
      return (data != null ? _i8.Photos.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.ProfilePhotos?>()) {
      return (data != null ? _i9.ProfilePhotos.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i10.UserProfile?>()) {
      return (data != null ? _i10.UserProfile.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.User?>()) {
      return (data != null ? _i11.User.fromJson(data, this) : null) as T;
    }
    if (t == List<_i12.Photos>) {
      return (data as List).map((e) => deserialize<_i12.Photos>(e)).toList()
          as dynamic;
    }
    if (t == List<_i12.User>) {
      return (data as List).map((e) => deserialize<_i12.User>(e)).toList()
          as dynamic;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i4.Event) {
      return 'Event';
    }
    if (data is _i5.EventTypes) {
      return 'EventTypes';
    }
    if (data is _i6.Example) {
      return 'Example';
    }
    if (data is _i7.Location) {
      return 'Location';
    }
    if (data is _i8.Photos) {
      return 'Photos';
    }
    if (data is _i9.ProfilePhotos) {
      return 'ProfilePhotos';
    }
    if (data is _i10.UserProfile) {
      return 'UserProfile';
    }
    if (data is _i11.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i3.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Event') {
      return deserialize<_i4.Event>(data['data']);
    }
    if (data['className'] == 'EventTypes') {
      return deserialize<_i5.EventTypes>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i6.Example>(data['data']);
    }
    if (data['className'] == 'Location') {
      return deserialize<_i7.Location>(data['data']);
    }
    if (data['className'] == 'Photos') {
      return deserialize<_i8.Photos>(data['data']);
    }
    if (data['className'] == 'ProfilePhotos') {
      return deserialize<_i9.ProfilePhotos>(data['data']);
    }
    if (data['className'] == 'UserProfile') {
      return deserialize<_i10.UserProfile>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i11.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i4.Event:
        return _i4.Event.t;
      case _i5.EventTypes:
        return _i5.EventTypes.t;
      case _i7.Location:
        return _i7.Location.t;
      case _i8.Photos:
        return _i8.Photos.t;
      case _i9.ProfilePhotos:
        return _i9.ProfilePhotos.t;
      case _i10.UserProfile:
        return _i10.UserProfile.t;
      case _i11.User:
        return _i11.User.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'task_management';
}
