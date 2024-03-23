import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_management_flutter/constants/config.dart';
import 'package:task_management_flutter/core/auth/firbease_auth_pod.dart';
import 'package:task_management_flutter/constants/serverpod.dart';
import 'package:serverpod_auth_firebase_flutter/serverpod_auth_firebase_flutter.dart'
    as login;
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';

class SignInBtn extends ConsumerWidget {
  const SignInBtn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var authPodNotifier = ref.read(authProvider.notifier);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // SignInButton(
        //   Buttons.google,
        //   clipBehavior: Clip.antiAlias,
        //   elevation: 10,
        //   shape: const RoundedRectangleBorder(
        //       borderRadius: BorderRadius.all(Radius.circular(10))),
        //   onPressed: () async {
        //     await authPodNotifier.signInWithGoogle();
        //   },
        // ),
        // SignInWithGoogleButton(
        //   caller: client.modules.auth,
        //   serverClientId: googleServerClientId,
        //   redirectUri: Uri.parse('http://localhost:8082/googlesignin'),
        // ),

        login.SignInWithFirebaseButton(
          caller: client.modules.auth,
          authProviders: [
            PhoneAuthProvider(),
          ],
          onFailure: () => print('Failed to sign in with Firebase.'),
          onSignedIn: () => print('Signed in with Firebase.'),
        ),

        login.SignInWithFirebaseButton(
          caller: client.modules.auth,
          authProviders: [
            GoogleProvider(clientId: googleClientId),
          ],
          onFailure: () => print('Failed to sign in with Firebase.'),
          onSignedIn: () => print('Signed in with Firebase.'),
        ),
      ],
    );
  }
}
