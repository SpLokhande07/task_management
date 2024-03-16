// // ignore_for_file: unused_import

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:task_management_flutter/core/auth/firbease_auth_pod.dart';
import 'package:task_management_flutter/core/global/streams/auth/streams.dart';
import 'package:task_management_flutter/router/routes.dart';

part 'router.g.dart';

/////////////////////////////////////////////////////////////////////// https://github.com/lucavenir/go_router_riverpod/blob/master/example/lib/router/router.dart
@riverpod
GoRouter router(RouterRef ref) {
  final routerKey = GlobalKey<NavigatorState>(debugLabel: 'routerKey');
  final authState = ref.watch(authStreamProvider);
  // ref..onDispose(authState)

  final router = GoRouter(
    navigatorKey: routerKey,
    debugLogDiagnostics: true,
    // refreshListenable: authState,
    initialLocation: const SplashRoute().location,
    routes: $appRoutes,
    redirect: (context, state) async {
      if (authState.isLoading || authState.hasError) return null;
      final isAuthenticated = authState.valueOrNull != null;
      try {
        final goingToLogin = state.fullPath == const LoginRoute().location;

        final isSplash = state.fullPath == const SplashRoute().location;
        if (isSplash) {
          return isAuthenticated
              ? const HomeRoute().location
              : const LoginRoute().location;
        }

        // if (isAuthenticated && goingToLogin) {
        //   return const HomeRoute().location;
        // }
        // if (!isAuthenticated && !goingToLogin) {
        //   return const LoginRoute().location;
        // }
        final isLoggingIn = state.fullPath == LoginRoute().location;
        if (isLoggingIn) return isAuthenticated ? HomeRoute().location : null;
      } catch (e) {
        debugPrint(e.toString());
      }
      return isAuthenticated ? null : const SplashRoute().location;
    },
  );
  // ref.onDispose(router.dispose);

  return router;
}
