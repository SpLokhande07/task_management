import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:task_management_flutter/core/components/calender/modal/calandar_pod_model.dart';

final calenderPodProvider =
    StateNotifierProvider<CalenderPod, CalenderPodModel>(
        (ref) => CalenderPod());

class CalenderPod extends StateNotifier<CalenderPodModel> {
  CalenderPod() : super(CalenderPodModel());

  init() {
    state = state.copyWith(
        focusedDay: DateTime.now(),
        calendarFormat: CalendarFormat.twoWeeks,
        firstDay: DateTime.now(),
        lastDay: DateTime.now(),
        rangeEnd: DateTime.now(),
        rangeSelectionMode: RangeSelectionMode.toggledOff,
        selectedDay: DateTime.now(),
        rangeStart: DateTime.now());
  }

  /// focusDate : Today
  /// selected Date : User tap on date
  onDateSelected(selectedDate, focusDate) {
    // print("${focusDate.toString()} ${selectedDate.toString()}");
    state = state.copyWith(focusedDay: focusDate, selectedDay: selectedDate);
  }

  onFormatChange(CalendarFormat calenderFormat) {
    state = state.copyWith(calendarFormat: calenderFormat);
  }
}
