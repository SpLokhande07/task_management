import 'package:flutter/material.dart';
import 'package:task_management_flutter/core/components/calender/view/calender_view.dart';

class HomeScreenMobile extends StatefulWidget {
  const HomeScreenMobile({super.key});

  @override
  State<HomeScreenMobile> createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reminder',
          // style: GoogleFonts.roboto(),
        ),
        centerTitle: false,
        actions: [IconButton(icon: const Icon(Icons.search), onPressed: () {})],
        elevation: 10,
      ),
      body: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [Expanded(child: CalenderView())],
      ),
    );
  }
}
