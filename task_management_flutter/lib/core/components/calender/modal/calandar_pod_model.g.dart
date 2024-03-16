// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calandar_pod_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalenderPodModelImpl _$$CalenderPodModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CalenderPodModelImpl(
      focusedDay: json['focusedDay'] == null
          ? null
          : DateTime.parse(json['focusedDay'] as String),
      selectedDay: json['selectedDay'] == null
          ? null
          : DateTime.parse(json['selectedDay'] as String),
      firstDay: json['firstDay'] == null
          ? null
          : DateTime.parse(json['firstDay'] as String),
      lastDay: json['lastDay'] == null
          ? null
          : DateTime.parse(json['lastDay'] as String),
      rangeStart: json['rangeStart'] == null
          ? null
          : DateTime.parse(json['rangeStart'] as String),
      rangeEnd: json['rangeEnd'] == null
          ? null
          : DateTime.parse(json['rangeEnd'] as String),
      calendarFormat: $enumDecodeNullable(
              _$CalendarFormatEnumMap, json['calendarFormat']) ??
          CalendarFormat.month,
      rangeSelectionMode: $enumDecodeNullable(
              _$RangeSelectionModeEnumMap, json['rangeSelectionMode']) ??
          RangeSelectionMode.toggledOff,
    );

Map<String, dynamic> _$$CalenderPodModelImplToJson(
        _$CalenderPodModelImpl instance) =>
    <String, dynamic>{
      'focusedDay': instance.focusedDay?.toIso8601String(),
      'selectedDay': instance.selectedDay?.toIso8601String(),
      'firstDay': instance.firstDay?.toIso8601String(),
      'lastDay': instance.lastDay?.toIso8601String(),
      'rangeStart': instance.rangeStart?.toIso8601String(),
      'rangeEnd': instance.rangeEnd?.toIso8601String(),
      'calendarFormat': _$CalendarFormatEnumMap[instance.calendarFormat]!,
      'rangeSelectionMode':
          _$RangeSelectionModeEnumMap[instance.rangeSelectionMode]!,
    };

const _$CalendarFormatEnumMap = {
  CalendarFormat.month: 'month',
  CalendarFormat.twoWeeks: 'twoWeeks',
  CalendarFormat.week: 'week',
};

const _$RangeSelectionModeEnumMap = {
  RangeSelectionMode.disabled: 'disabled',
  RangeSelectionMode.toggledOff: 'toggledOff',
  RangeSelectionMode.toggledOn: 'toggledOn',
  RangeSelectionMode.enforced: 'enforced',
};
