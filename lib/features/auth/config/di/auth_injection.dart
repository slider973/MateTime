import 'package:get_it/get_it.dart';
import '../../data/datasources/firebase/firebase_auth_service.dart';
import '../../data/interfaces/auth_service.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/usecases/sign_in_usecase.dart';
import '../../presentation/bloc/auth_bloc.dart';

final getIt = GetIt.instance;

void initAuthDependencies() {
  // Services
  getIt.registerLazySingleton<AuthService>(() => FirebaseAuthService());

  // Repositories
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(getIt()));

  // Use cases
  getIt.registerLazySingleton(() => SignInUseCase(getIt()));

  // Blocs
  getIt.registerFactory(() => AuthBloc(getIt()));
}