import 'package:flutter/material.dart';

class LayoutManager extends StatefulWidget {
  final Widget mobile;
  final Widget tab;
  final Widget desktop;

  LayoutManager(
      {super.key,
      required this.mobile,
      required this.tab,
      required this.desktop});

  @override
  State<LayoutManager> createState() => _LayoutManagerState();
}

class _LayoutManagerState extends State<LayoutManager> {
  /// mobile < 650
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  /// tablet >= 650
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 650;

  ///desktop >= 1100
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth >= 1100) {
        return widget.desktop;
      } else if (constraints.maxWidth >= 650) {
        return widget.tab;
      } else {
        return widget.mobile;
      }
    });
  }
}
