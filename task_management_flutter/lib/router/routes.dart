import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_management_flutter/constants/routes.dart';
import 'package:task_management_flutter/core/screens/homescreen/home_screen.dart';
import 'package:task_management_flutter/core/screens/login/view/login.dart';
import 'package:task_management_flutter/core/screens/splashscreen/view/splashscreen.dart';

part 'routes.g.dart';

@TypedGoRoute<SplashRoute>(path: '/$splashRoute', name: splashRoute)
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Splashscreen();
  }
}

@TypedGoRoute<LoginRoute>(path: '/$loginRoute', name: loginRoute)
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}

@TypedGoRoute<HomeRoute>(path: '/$homeRoute', name: homeRoute)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}
