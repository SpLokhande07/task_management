// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAuthImpl _$$UserAuthImplFromJson(Map<String, dynamic> json) =>
    _$UserAuthImpl(
      isSignedIn: json['isSignedIn'] as bool? ?? false,
      uid: json['uid'] ?? "",
      email: json['email'] as String?,
      photoURL: json['photoURL'] as String?,
      displayName: json['displayName'] as String?,
    );

Map<String, dynamic> _$$UserAuthImplToJson(_$UserAuthImpl instance) =>
    <String, dynamic>{
      'isSignedIn': instance.isSignedIn,
      'uid': instance.uid,
      'email': instance.email,
      'photoURL': instance.photoURL,
      'displayName': instance.displayName,
    };
