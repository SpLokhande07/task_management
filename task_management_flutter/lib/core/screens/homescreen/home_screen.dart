import 'package:flutter/material.dart';
import 'package:task_management_flutter/core/screens/homescreen/layout/homescreen_desktop.dart';
import 'package:task_management_flutter/core/screens/homescreen/layout/homescreen_mobile.dart';
import 'package:task_management_flutter/core/screens/homescreen/layout/homescreen_tablet.dart';
import 'package:task_management_flutter/layout_manager/layout_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutManager(
        mobile: const HomeScreenMobile(),
        tab: const HomeScreenTablet(),
        desktop: const HomeScreenDesktop());
  }
}
