import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:task_management_flutter/core/auth/firbease_auth_pod.dart';
import 'package:task_management_flutter/core/screens/login/component/divider.dart';
import 'package:task_management_flutter/core/screens/login/component/google_sign_in_btn.dart';
import 'package:task_management_flutter/core/screens/login/component/login_container.dart';

class LoginDesktop extends StatefulHookConsumerWidget {
  const LoginDesktop({super.key});

  @override
  ConsumerState<LoginDesktop> createState() => _LoginDesktopState();
}

class _LoginDesktopState extends ConsumerState<LoginDesktop> {
  @override
  Widget build(BuildContext context) {
    var authPodNotifier = ref.read(authProvider.notifier);
    return LoginContainer(
      widgets: [
        // Positioned.fill(child: BubbleAnimationWidget()),
        Positioned.fill(
          bottom: 25,
          top: MediaQuery.of(context).size.height * 0.6,
          left: MediaQuery.of(context).size.width * 0.1,
          right: MediaQuery.of(context).size.width * 0.1,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            child: BackdropFilter(
              blendMode: BlendMode.srcIn,
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: Container(
                width: MediaQuery.of(context).size.height * 0.3,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  // borderRadius: const BorderRadius.all(Radius.circular(25))
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: TextField(
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            filled: false,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: Colors.red),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: Colors.white),
                            )),
                      ),
                    ),
                    const LoginDivider(),
                    const SizedBox(
                      height: 20,
                    ),
                    const SignInBtn(),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
