import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management_flutter/core/auth/social_auth/google_auth.dart';
import 'package:task_management_flutter/core/global/streams/auth/streams.dart';
import 'package:task_management_flutter/core/screens/login/modal/auth.dart';

final authStreamProvider = StreamProvider<User?>((ref) {
  return FirebaseAuth.instance.authStateChanges();
});

var authProvider = StateNotifierProvider<FirebaseAuthPod, UserAuth>(
    (ref) => FirebaseAuthPod(ref));

class FirebaseAuthPod extends StateNotifier<UserAuth> {
  Ref ref;
  FirebaseAuthPod(this.ref) : super(UserAuth());

  GoogleAuthHelper googleAuthHelper = GoogleAuthHelper();
  init() {
    ref.read(authStateChangesProvider).whenData((user) {
      state = state.copyWith(isSignedIn: user != null, uid: user?.uid);
    });
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    ref.read(authStateChangesProvider).whenData((user) {
      state = state.copyWith(isSignedIn: user != null, uid: user?.uid);
    });
  }

  Future<void> signOut() async {
    await ref.read(authStateChangesProvider).whenData((user) {
      state = state.copyWith(isSignedIn: user != null, uid: user?.uid);
    });
  }

// sign in with google
  // Future<UserAuth>
  signInWithGoogle() async {
    try {
      // Once signed in, return the UserCredential
      UserCredential cred = await googleAuthHelper.initGoogleAuth();
      state = state.copyWith(
          displayName: cred.user!.displayName,
          email: cred.user!.email,
          isSignedIn: true,
          photoURL: cred.user!.photoURL,
          uid: cred.user!.uid);
    } catch (e) {
      debugPrint(e.toString());
    }

    // return state;
  }
}
