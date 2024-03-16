import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'calandar_pod_model.freezed.dart';
part 'calandar_pod_model.g.dart';

@freezed
class CalenderPodModel with _$CalenderPodModel {
  factory CalenderPodModel({
    DateTime? focusedDay,
    DateTime? selectedDay,
    DateTime? firstDay,
    DateTime? lastDay,
    DateTime? rangeStart,
    DateTime? rangeEnd,
    @Default(CalendarFormat.month) CalendarFormat calendarFormat,
    @Default(RangeSelectionMode.toggledOff)
    RangeSelectionMode rangeSelectionMode,
  }) = _CalenderPodModel;

  factory CalenderPodModel.fromJson(Map<String, dynamic> json) =>
      _$CalenderPodModelFromJson(json);
}
