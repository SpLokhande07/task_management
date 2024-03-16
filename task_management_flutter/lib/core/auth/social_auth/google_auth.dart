import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthHelper {
  GoogleAuthProvider _googleProvider = GoogleAuthProvider();

  getPermissionScope() {
    _googleProvider
        .addScope('https://www.googleapis.com/auth/contacts.readonly');
    _googleProvider.setCustomParameters({'login_hint': 'user@example.com'});
  }

  initGoogleAuth() async {
    kIsWeb ? await _googleAuthWeb() : await _googleAuthApp();
  }

  //For web
  Future<UserCredential> _googleAuthWeb() async {
    // Create a new provider

    _googleProvider
        .addScope('https://www.googleapis.com/auth/contacts.readonly');
    _googleProvider.setCustomParameters({'login_hint': 'user@example.com'});

    // Once signed in, return the UserCredential
    // if (kIsWeb)
    return await FirebaseAuth.instance.signInWithPopup(_googleProvider);

    // Or use signInWithRedirect
    // else
    //   await FirebaseAuth.instance.signInWithRedirect(_googleProvider);
    // return await FirebaseAuth.instance.getRedirectResult();
  }

  Future<UserCredential> _googleAuthApp() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
