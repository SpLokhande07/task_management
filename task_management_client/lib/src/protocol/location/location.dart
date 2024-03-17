/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Location extends _i1.SerializableEntity {
  Location._({
    this.id,
    required this.latitude,
    required this.longitude,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  double latitude;

  double longitude;

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
