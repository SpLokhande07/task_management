/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'events/event.dart' as _i2;
import 'events/event_types.dart' as _i3;
import 'example.dart' as _i4;
import 'location/location.dart' as _i5;
import 'photo/photos.dart' as _i6;
import 'photo/profile_pic.dart' as _i7;
import 'user_profile/user_profile.dart' as _i8;
import 'users/user.dart' as _i9;
import 'protocol.dart' as _i10;
import 'package:serverpod_auth_client/module.dart' as _i11;
export 'events/event.dart';
export 'events/event_types.dart';
export 'example.dart';
export 'location/location.dart';
export 'photo/photos.dart';
export 'photo/profile_pic.dart';
export 'user_profile/user_profile.dart';
export 'users/user.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Event) {
      return _i2.Event.fromJson(data, this) as T;
    }
    if (t == _i3.EventTypes) {
      return _i3.EventTypes.fromJson(data, this) as T;
    }
    if (t == _i4.Example) {
      return _i4.Example.fromJson(data, this) as T;
    }
    if (t == _i5.Location) {
      return _i5.Location.fromJson(data, this) as T;
    }
    if (t == _i6.Photos) {
      return _i6.Photos.fromJson(data, this) as T;
    }
    if (t == _i7.ProfilePhotos) {
      return _i7.ProfilePhotos.fromJson(data, this) as T;
    }
    if (t == _i8.UserProfile) {
      return _i8.UserProfile.fromJson(data, this) as T;
    }
    if (t == _i9.User) {
      return _i9.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Event?>()) {
      return (data != null ? _i2.Event.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.EventTypes?>()) {
      return (data != null ? _i3.EventTypes.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Example?>()) {
      return (data != null ? _i4.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Location?>()) {
      return (data != null ? _i5.Location.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.Photos?>()) {
      return (data != null ? _i6.Photos.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.ProfilePhotos?>()) {
      return (data != null ? _i7.ProfilePhotos.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i8.UserProfile?>()) {
      return (data != null ? _i8.UserProfile.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.User?>()) {
      return (data != null ? _i9.User.fromJson(data, this) : null) as T;
    }
    if (t == List<_i10.Photos>) {
      return (data as List).map((e) => deserialize<_i10.Photos>(e)).toList()
          as dynamic;
    }
    if (t == List<_i10.User>) {
      return (data as List).map((e) => deserialize<_i10.User>(e)).toList()
          as dynamic;
    }
    try {
      return _i11.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i11.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i2.Event) {
      return 'Event';
    }
    if (data is _i3.EventTypes) {
      return 'EventTypes';
    }
    if (data is _i4.Example) {
      return 'Example';
    }
    if (data is _i5.Location) {
      return 'Location';
    }
    if (data is _i6.Photos) {
      return 'Photos';
    }
    if (data is _i7.ProfilePhotos) {
      return 'ProfilePhotos';
    }
    if (data is _i8.UserProfile) {
      return 'UserProfile';
    }
    if (data is _i9.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i11.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Event') {
      return deserialize<_i2.Event>(data['data']);
    }
    if (data['className'] == 'EventTypes') {
      return deserialize<_i3.EventTypes>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i4.Example>(data['data']);
    }
    if (data['className'] == 'Location') {
      return deserialize<_i5.Location>(data['data']);
    }
    if (data['className'] == 'Photos') {
      return deserialize<_i6.Photos>(data['data']);
    }
    if (data['className'] == 'ProfilePhotos') {
      return deserialize<_i7.ProfilePhotos>(data['data']);
    }
    if (data['className'] == 'UserProfile') {
      return deserialize<_i8.UserProfile>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i9.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
