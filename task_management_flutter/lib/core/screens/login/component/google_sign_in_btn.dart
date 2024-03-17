import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serverpod_auth_google_flutter/serverpod_auth_google_flutter.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:task_management_flutter/constants/config.dart';
import 'package:task_management_flutter/core/auth/firbease_auth_pod.dart';
import 'package:task_management_flutter/constants/serverpod.dart';

class SignInBtn extends ConsumerWidget {
  const SignInBtn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var authPodNotifier = ref.read(authProvider.notifier);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SignInButton(
          Buttons.google,
          clipBehavior: Clip.antiAlias,
          elevation: 10,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          onPressed: () async {
            await authPodNotifier.signInWithGoogle();
          },
        ),
        SignInWithGoogleButton(
          caller: client.modules.auth,
          serverClientId: googleServerClientId,
          redirectUri: Uri.parse('http://localhost:8082/googlesignin'),
        ),
      ],
    );
  }
}
