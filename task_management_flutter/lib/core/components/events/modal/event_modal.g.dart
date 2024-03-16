// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventModalImpl _$$EventModalImplFromJson(Map<String, dynamic> json) =>
    _$EventModalImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      time: json['time'] as String?,
      location: json['location'] as String?,
      category: json['category'] as String?,
      color: json['color'] as String?,
      image: json['image'] as String?,
      type: $enumDecodeNullable(_$EventTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$EventModalImplToJson(_$EventModalImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'date': instance.date?.toIso8601String(),
      'time': instance.time,
      'location': instance.location,
      'category': instance.category,
      'color': instance.color,
      'image': instance.image,
      'type': _$EventTypeEnumMap[instance.type],
    };

const _$EventTypeEnumMap = {
  EventType.birthday: 'birthday',
  EventType.anniversary: 'anniversary',
  EventType.dates: 'dates',
  EventType.meetup: 'meetup',
  EventType.party: 'party',
};
