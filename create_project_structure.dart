import 'dart:io';

void main() async {
  final projectName = 'MateTime';
  final baseDir = Directory('.');

  if (await baseDir.exists()) {
    print('Le répertoire $projectName existe déjà.');
    return;
  }

  await baseDir.create();
  print('Création de la structure du projet $projectName...');

  final directories = [
    'lib/features/auth/data/datasources/firebase',
    'lib/features/auth/data/datasources/api',
    'lib/features/auth/data/models',
    'lib/features/auth/data/repositories',
    'lib/features/auth/data/interfaces',
    'lib/features/auth/domain/entities',
    'lib/features/auth/domain/repositories',
    'lib/features/auth/domain/usecases',
    'lib/features/auth/presentation/pages',
    'lib/features/auth/presentation/widgets',
    'lib/features/auth/presentation/bloc',
    'lib/features/auth/config/di',
    'lib/features/profile/data/datasources/firebase',
    'lib/features/profile/data/models',
    'lib/features/profile/data/repositories',
    'lib/features/profile/data/interfaces',
    'lib/features/profile/domain/entities',
    'lib/features/profile/domain/repositories',
    'lib/features/profile/domain/usecases',
    'lib/features/profile/presentation/pages',
    'lib/features/profile/presentation/widgets',
    'lib/features/profile/presentation/bloc',
    'lib/features/profile/config/di',
    'lib/features/home/data/datasources',
    'lib/features/home/data/models',
    'lib/features/home/data/repositories',
    'lib/features/home/data/interfaces',
    'lib/features/home/domain/entities',
    'lib/features/home/domain/repositories',
    'lib/features/home/domain/usecases',
    'lib/features/home/presentation/pages',
    'lib/features/home/presentation/widgets',
    'lib/features/home/presentation/bloc',
    'lib/features/home/config/di',
    'core/errors',
    'core/utils',
    'core/network',
    'core/usecases',
    'test/features/auth',
    'test/features/profile',
    'test/features/home',
    'test/core',
  ];

  for (var dir in directories) {
    await Directory('$projectName/$dir').create(recursive: true);
  }

  final files = [
    'lib/features/auth/data/datasources/firebase/firebase_auth_service.dart',
    'lib/features/auth/data/datasources/api/api_auth_service.dart',
    'lib/features/auth/data/repositories/auth_repository_impl.dart',
    'lib/features/auth/data/interfaces/auth_service.dart',
    'lib/features/auth/domain/entities/user.dart',
    'lib/features/auth/domain/repositories/auth_repository.dart',
    'lib/features/auth/domain/usecases/sign_in_usecase.dart',
    'lib/features/auth/presentation/pages/sign_in_page.dart',
    'lib/features/auth/presentation/bloc/auth_bloc.dart',
    'lib/features/auth/config/di/auth_injection.dart',
    'lib/features/profile/data/datasources/firebase/firebase_profile_service.dart',
    'lib/features/profile/config/di/profile_injection.dart',
    'lib/features/home/config/di/home_injection.dart',
  ];

  for (var file in files) {
    await File('$projectName/$file').create(recursive: true);
  }

  print('Structure du projet $projectName créée avec succès.');
}