

import '../../interfaces/auth_service.dart';

class ApiAuthService implements AuthService {
  @override
  Future<void> signIn(String email, String password) {
    // Implémentation de la connexion via API
    throw UnimplementedError();
  }

  @override
  Future<void> signUp(String email, String password) {
    // Implémentation de l'inscription via API
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // Implémentation de la déconnexion via API
    throw UnimplementedError();
  }
}