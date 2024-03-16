import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:task_management_flutter/core/components/calender/view/calender_view.dart';

class HomeScreenCalender extends StatefulWidget {
  HomeScreenCalender({super.key});

  @override
  State<HomeScreenCalender> createState() => _HomeScreenCalenderState();
}

class _HomeScreenCalenderState extends State<HomeScreenCalender> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CalenderView(),
      ],
    );
  }
}
