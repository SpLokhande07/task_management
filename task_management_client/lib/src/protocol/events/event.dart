/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import '../protocol.dart' as _i2;

abstract class Event extends _i1.SerializableEntity {
  Event._({
    this.id,
    required this.date,
    required this.type,
    required this.title,
    required this.description,
    required this.photos,
    required this.location,
    required this.members,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  DateTime date;

  _i2.EventTypes type;

  String title;

  String description;

  List<_i2.Photos> photos;

  _i2.Location location;

  List<_i2.User> members;

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
