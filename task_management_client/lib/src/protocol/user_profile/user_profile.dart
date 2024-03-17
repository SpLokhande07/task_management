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

abstract class UserProfile extends _i1.SerializableEntity {
  UserProfile._({
    this.id,
    required this.user,
    required this.photos,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i2.User user;

  List<_i2.Photos> photos;

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
