import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'streams.g.dart';
// part 'streams.freezed.dart';

final authStateChangesProvider = StreamProvider<User?>((ref) async* {
  // Assuming you have an instance of FirebaseAuth
  yield* FirebaseAuth.instance.authStateChanges();
});

// @Riverpod(keepAlive: true)
@riverpod
ValueNotifier<Stream<User?>> authState(AuthStateRef ref) {
  final notifier = ValueNotifier(FirebaseAuth.instance.authStateChanges());
  ref.onDispose(notifier.dispose);

  notifier.addListener(ref.notifyListeners);

  return notifier;
}
