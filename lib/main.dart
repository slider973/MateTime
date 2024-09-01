import 'package:flutter/material.dart';

import 'config/di/firebase.dart';
import 'config/di/service_factory.dart';
import 'config/theme/theme.dart';
import 'features/auth/config/di/auth_injection.dart';
import 'features/auth/presentation/pages/sign_in_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initAuthDependencies();
  await FirebaseService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      home: ServiceFactory(child: const SignInPage()),
    );
  }
}
