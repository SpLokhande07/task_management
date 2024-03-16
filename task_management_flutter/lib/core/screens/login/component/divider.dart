import 'package:flutter/material.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
            child: Divider(
              thickness: 0.5,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          "OR",
          style: TextStyle(color: Colors.white.withOpacity(0.3)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
            child: Divider(
              thickness: 0.5,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
