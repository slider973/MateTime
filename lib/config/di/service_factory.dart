import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/config/di/auth_injection.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';

class ServiceFactory extends StatelessWidget {
  final getIt = GetIt.instance;
  final Widget child;

  ServiceFactory({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => getIt<AuthBloc>(),
        ),
      ],
      child: child,
    );
  }
}
