import 'package:flutter/material.dart';
import 'package:mate_time/features/auth/presentation/widgets/sign_in_form.dart';

import '../../../../config/theme/constant.dart';

class SignInContent extends StatelessWidget {
  const SignInContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Constant.buildBackgroundGradient(),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 50),
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
      ),
    );
  }
}