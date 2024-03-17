/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class ProfilePhotos extends _i1.SerializableEntity {
  ProfilePhotos._({
    this.id,
    required this.filePath,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String filePath;

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
