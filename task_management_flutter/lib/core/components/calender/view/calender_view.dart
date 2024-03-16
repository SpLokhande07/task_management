import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:task_management_flutter/core/components/calender/controller/calender_pod.dart';

class CalenderView extends ConsumerStatefulWidget {
  const CalenderView({super.key});

  @override
  ConsumerState<CalenderView> createState() => _CalenderViewState();
}

class _CalenderViewState extends ConsumerState<CalenderView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Run this method once the ui is redendered succesfully
    // This is a good place to initialize the state of the widget
    Future.delayed(const Duration(milliseconds: 10), () {
      ref.read(calenderPodProvider.notifier).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    var calendarPod = ref.watch(calenderPodProvider);
    var calendarPodNotifier = ref.watch(calenderPodProvider.notifier);
    return TableCalendar(
      focusedDay: calendarPod.focusedDay ?? DateTime.now(),
      firstDay: DateTime(calendarPod.selectedDay != null
          ? calendarPod.selectedDay!.year - 3
          : DateTime.now().year - 3),
      lastDay: DateTime(calendarPod.selectedDay != null
          ? calendarPod.selectedDay!.year + 3
          : calendarPod.focusedDay != null
              ? calendarPod.focusedDay!.year
              : DateTime.now().year + 3),
      availableCalendarFormats: const {
        CalendarFormat.month: 'Month',
        CalendarFormat.twoWeeks: '2 weeks',
        CalendarFormat.week: 'Week',
      },
      onFormatChanged: calendarPodNotifier.onFormatChange,
      headerVisible: true,
      calendarFormat: calendarPod.calendarFormat,
      selectedDayPredicate: (day) => isSameDay(day, calendarPod.selectedDay),
      onDaySelected: ref.read(calenderPodProvider.notifier).onDateSelected,
      calendarBuilders: const CalendarBuilders(
          // selectedBuilder: (context, day, focusedDay) => Container(
          //   alignment: Alignment.center,
          //   decoration: BoxDecoration(
          //       color: calendarPod.focusedDay == calendarPod.selectedDay
          //           ? Colors.blue[200]
          //           : Colors.transparent),
          //   child: Text(
          //     day.day.toString(),
          //     style: TextStyle(color: Colors.black),
          //   ),
          // ),
          // todayBuilder: (context, day, focusedDay) => Container(
          //   alignment: Alignment.center,
          //   decoration: BoxDecoration(
          //       color: calendarPod.focusedDay != calendarPod.selectedDay
          //           ? Colors.green[200]
          //           : Colors.transparent),
          //   child: Text(
          //     day.day.toString(),
          //     style: const TextStyle(color: Colors.black),
          //   ),
          // ),
          ),
      sixWeekMonthsEnforced: false,
      calendarStyle: const CalendarStyle(
          holidayDecoration: BoxDecoration(color: Colors.red),
          isTodayHighlighted: true,
          outsideDaysVisible: true,
          selectedTextStyle: TextStyle(color: Colors.white),
          selectedDecoration: BoxDecoration(
            color: Colors.indigoAccent,
            shape: BoxShape.circle,
          )),
    );
  }
}
