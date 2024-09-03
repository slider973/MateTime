import 'package:flutter/material.dart';
import '../../../../../config/theme/constant.dart';
import 'sign_in_form.dart';

class SignInContent extends StatelessWidget {
  const SignInContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Constant.buildBackgroundGradient(),
      child: Column(
        children: [
          const SizedBox(height: 160),
          const Text(
            'Connexion',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SignInForm(),
          ),
        ],
      ),
    );
  }
}