import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/auth_bloc.dart';


class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool _rememberMe = false;
  bool _obscurePassword = true;
  // Add this constant for the development email
  static const String devEmail = 'jonathan.lemaine@jo.com';
  @override
  void initState() {
    super.initState();
    // Initialize the email controller with the dev email if in dev mode
    _emailController =
        TextEditingController(text: isInDevMode() ? devEmail : '');
    _passwordController = TextEditingController(text: isInDevMode() ? '123456' : '');

  }

  // Add this method to check if the app is in dev mode
  bool isInDevMode() {
    return const bool.fromEnvironment('dart.vm.product') == false;
  }


  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            _buildWelcomeText(),
            const SizedBox(height: 32),
            _buildEmailField(),
            const SizedBox(height: 16),
            _buildPasswordField(),
            const SizedBox(height: 16),
            _buildRememberMeCheckbox(),
            const SizedBox(height: 32),
            _buildSignInButton(),
            const SizedBox(height: 24),
            //    _buildForgotPasswordButton(),
            //    const SizedBox(height: 16),
            //   _buildSignUpSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeText() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bon retour !',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          'Utilisez la même méthode que vous\navez utilisée pour créer votre compte.',
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Widget _buildEmailField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        TextField(
          controller: _emailController,
          decoration: InputDecoration(
            hintText: 'eyden@lemaine.com',
            fillColor: Colors.grey[100],
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
            'Mot de passe', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        TextField(
          controller: _passwordController,
          obscureText: _obscurePassword,
          decoration: InputDecoration(
            hintText: 'Entrez votre mot de passe',
            fillColor: Colors.grey[100],
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                  _obscurePassword ? Icons.visibility_off : Icons.visibility),
              onPressed: () =>
                  setState(() => _obscurePassword = !_obscurePassword),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRememberMeCheckbox() {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: _rememberMe,
            onChanged: (value) => setState(() => _rememberMe = value ?? false),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)),
          ),
        ),
        const SizedBox(width: 8),
        Text('Se souvenir de moi', style: TextStyle(color: Colors.grey[600])),
      ],
    );
  }

  Widget _buildSignInButton() {
    return Center(
      child: SizedBox(
        width: 303,
        height: 56,
        child: ElevatedButton(
          onPressed: _onSignInPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF6200EE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.zero,
          ),
          child: const Text(
            'Se connecter',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }

  void _onSignInPressed() {
    context.read<AuthBloc>().add(
      SignInRequested(
        _emailController.text,
        _passwordController.text,
      ),
    );
  }

  Widget _buildForgotPasswordButton() {
    return Center(
      child: TextButton(
        onPressed: () {
          // Navigate to password recovery page
        },
        child: const Text(
          'Mot de passe oublié ?',
          style: TextStyle(color: Color(0xFF6200EE), fontSize: 16),
        ),
      ),
    );
  }

  Widget _buildSignUpSection() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Vous n'avez pas de compte ?",
              style: TextStyle(color: Colors.grey[600])),
          TextButton(
            onPressed: () {
              // Navigate to sign up page
            },
            child: const Text(
              "S'inscrire",
              style: TextStyle(
                  color: Color(0xFF6200EE), fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}