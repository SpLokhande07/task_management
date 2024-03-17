/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class EventTypes extends _i1.SerializableEntity {
  EventTypes._({
    this.id,
    required this.title,
    required this.description,
    required this.icon,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String description;

  String icon;

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
