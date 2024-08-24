import '../../domain/repositories/auth_repository.dart';
import '../interfaces/auth_service.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthService _authService;

  AuthRepositoryImpl(this._authService);

  @override
  Future<void> signIn(String email, String password) {
    return _authService.signIn(email, password);
  }

  @override
  Future<void> signUp(String email, String password) {
    return _authService.signUp(email, password);
  }

  @override
  Future<void> signOut() {
    return _authService.signOut();
  }
}