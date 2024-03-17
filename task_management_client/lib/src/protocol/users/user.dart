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
import 'package:serverpod_auth_client/module.dart' as _i3;

abstract class User extends _i1.SerializableEntity {
  User._({
    this.id,
    required this.fId,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.dob,
    required this.contactNo,
    required this.photo,
    required this.userInfo,
  });

  factory User({
    int? id,
    required String fId,
    required String firstName,
    required String lastName,
    required String email,
    required DateTime dob,
    required int contactNo,
    required _i2.ProfilePhotos photo,
    required _i3.UserInfo userInfo,
  }) = _UserImpl;

  factory User.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return User(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      fId: serializationManager.deserialize<String>(jsonSerialization['fId']),
      firstName: serializationManager
          .deserialize<String>(jsonSerialization['firstName']),
      lastName: serializationManager
          .deserialize<String>(jsonSerialization['lastName']),
      email:
          serializationManager.deserialize<String>(jsonSerialization['email']),
      dob: serializationManager.deserialize<DateTime>(jsonSerialization['dob']),
      contactNo:
          serializationManager.deserialize<int>(jsonSerialization['contactNo']),
      photo: serializationManager
          .deserialize<_i2.ProfilePhotos>(jsonSerialization['photo']),
      userInfo: serializationManager
          .deserialize<_i3.UserInfo>(jsonSerialization['userInfo']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String fId;

  String firstName;

  String lastName;

  String email;

  DateTime dob;

  int contactNo;

  _i2.ProfilePhotos photo;

  _i3.UserInfo userInfo;

  User copyWith({
    int? id,
    String? fId,
    String? firstName,
    String? lastName,
    String? email,
    DateTime? dob,
    int? contactNo,
    _i2.ProfilePhotos? photo,
    _i3.UserInfo? userInfo,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'fId': fId,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'dob': dob.toJson(),
      'contactNo': contactNo,
      'photo': photo.toJson(),
      'userInfo': userInfo.toJson(),
    };
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required String fId,
    required String firstName,
    required String lastName,
    required String email,
    required DateTime dob,
    required int contactNo,
    required _i2.ProfilePhotos photo,
    required _i3.UserInfo userInfo,
  }) : super._(
          id: id,
          fId: fId,
          firstName: firstName,
          lastName: lastName,
          email: email,
          dob: dob,
          contactNo: contactNo,
          photo: photo,
          userInfo: userInfo,
        );

  @override
  User copyWith({
    Object? id = _Undefined,
    String? fId,
    String? firstName,
    String? lastName,
    String? email,
    DateTime? dob,
    int? contactNo,
    _i2.ProfilePhotos? photo,
    _i3.UserInfo? userInfo,
  }) {
    return User(
      id: id is int? ? id : this.id,
      fId: fId ?? this.fId,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      dob: dob ?? this.dob,
      contactNo: contactNo ?? this.contactNo,
      photo: photo ?? this.photo.copyWith(),
      userInfo: userInfo ?? this.userInfo.copyWith(),
    );
  }
}
