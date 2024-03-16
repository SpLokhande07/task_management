import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_management_flutter/core/screens/homescreen/component/calender.dart';
import 'package:task_management_flutter/core/screens/homescreen/component/calender_events.dart';

class HomeScreenTablet extends StatefulWidget {
  const HomeScreenTablet({super.key});

  @override
  State<HomeScreenTablet> createState() => _HomeScreenTabletState();
}

class _HomeScreenTabletState extends State<HomeScreenTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Reminder',
            // style: GoogleFonts.roboto(),
          ),
          centerTitle: false,
          actions: [
            IconButton(icon: const Icon(Icons.search), onPressed: () {})
          ],
          elevation: 10,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [HomeScreenCalender(), CalendarEvents()],
        ));
  }
}
