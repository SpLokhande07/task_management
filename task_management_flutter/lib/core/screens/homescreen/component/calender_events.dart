import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management_flutter/core/components/calender/controller/calender_pod.dart';

class CalendarEvents extends StatefulWidget {
  const CalendarEvents({super.key});

  @override
  State<CalendarEvents> createState() => _CalendarEventsState();
}

class _CalendarEventsState extends State<CalendarEvents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer(builder: (context, ref, child) {
        var calendarPod = ref.watch(calenderPodProvider);
        return calendarPod.focusedDay == null
            ? SizedBox()
            : Center(
                child: Text(
                    "Value:${calendarPod.focusedDay!.day}/${calendarPod.focusedDay!.month}/${calendarPod.focusedDay!.year}"),
              );
      }),
    );
  }
}
