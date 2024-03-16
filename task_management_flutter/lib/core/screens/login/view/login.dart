import 'package:flutter/material.dart';
import 'package:task_management_flutter/layout_manager/layout_manager.dart';
import 'package:task_management_flutter/core/screens/login/layout/login_desktop.dart';
import 'package:task_management_flutter/core/screens/login/layout/login_mobile.dart';
import 'package:task_management_flutter/core/screens/login/layout/login_tablet.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return
        // LoginTablet()
        LayoutManager(
      desktop: const LoginDesktop(),
      mobile: const LoginMobile(),
      tab: const LoginTablet(),
    );
  }
}
