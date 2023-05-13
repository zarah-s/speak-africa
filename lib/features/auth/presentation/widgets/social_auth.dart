import 'package:flutter/material.dart';

class SocialAuth extends StatelessWidget {
  const SocialAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 20,
      children: [
        Image.asset(
          'assets/icons/google.png',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'assets/icons/facebook.png',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'assets/icons/apple.png',
          fit: BoxFit.contain,
        )
      ],
    );
  }
}
