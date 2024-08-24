import 'package:flutter/material.dart';

class SignInHeaderWidget extends StatelessWidget {
  const SignInHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Header',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}