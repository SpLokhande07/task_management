// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_modal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventModal _$EventModalFromJson(Map<String, dynamic> json) {
  return _EventModal.fromJson(json);
}

/// @nodoc
mixin _$EventModal {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  EventType? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventModalCopyWith<EventModal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModalCopyWith<$Res> {
  factory $EventModalCopyWith(
          EventModal value, $Res Function(EventModal) then) =
      _$EventModalCopyWithImpl<$Res, EventModal>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      DateTime? date,
      String? time,
      String? location,
      String? category,
      String? color,
      String? image,
      EventType? type});
}

/// @nodoc
class _$EventModalCopyWithImpl<$Res, $Val extends EventModal>
    implements $EventModalCopyWith<$Res> {
  _$EventModalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? location = freezed,
    Object? category = freezed,
    Object? color = freezed,
    Object? image = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EventType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventModalImplCopyWith<$Res>
    implements $EventModalCopyWith<$Res> {
  factory _$$EventModalImplCopyWith(
          _$EventModalImpl value, $Res Function(_$EventModalImpl) then) =
      __$$EventModalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      DateTime? date,
      String? time,
      String? location,
      String? category,
      String? color,
      String? image,
      EventType? type});
}

/// @nodoc
class __$$EventModalImplCopyWithImpl<$Res>
    extends _$EventModalCopyWithImpl<$Res, _$EventModalImpl>
    implements _$$EventModalImplCopyWith<$Res> {
  __$$EventModalImplCopyWithImpl(
      _$EventModalImpl _value, $Res Function(_$EventModalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? location = freezed,
    Object? category = freezed,
    Object? color = freezed,
    Object? image = freezed,
    Object? type = freezed,
  }) {
    return _then(_$EventModalImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EventType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventModalImpl implements _EventModal {
  _$EventModalImpl(
      {this.title,
      this.description,
      this.date,
      this.time,
      this.location,
      this.category,
      this.color,
      this.image,
      this.type});

  factory _$EventModalImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventModalImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? date;
  @override
  final String? time;
  @override
  final String? location;
  @override
  final String? category;
  @override
  final String? color;
  @override
  final String? image;
  @override
  final EventType? type;

  @override
  String toString() {
    return 'EventModal(title: $title, description: $description, date: $date, time: $time, location: $location, category: $category, color: $color, image: $image, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventModalImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, date, time,
      location, category, color, image, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventModalImplCopyWith<_$EventModalImpl> get copyWith =>
      __$$EventModalImplCopyWithImpl<_$EventModalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventModalImplToJson(
      this,
    );
  }
}

abstract class _EventModal implements EventModal {
  factory _EventModal(
      {final String? title,
      final String? description,
      final DateTime? date,
      final String? time,
      final String? location,
      final String? category,
      final String? color,
      final String? image,
      final EventType? type}) = _$EventModalImpl;

  factory _EventModal.fromJson(Map<String, dynamic> json) =
      _$EventModalImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  DateTime? get date;
  @override
  String? get time;
  @override
  String? get location;
  @override
  String? get category;
  @override
  String? get color;
  @override
  String? get image;
  @override
  EventType? get type;
  @override
  @JsonKey(ignore: true)
  _$$EventModalImplCopyWith<_$EventModalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
