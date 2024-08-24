

import '../../interfaces/auth_service.dart';

class FirebaseAuthService implements AuthService {
  @override
  Future<void> signIn(String email, String password) {
    // Implémentation de la connexion via Firebase
    throw UnimplementedError();
  }

  @override
  Future<void> signUp(String email, String password) {
    // Implémentation de l'inscription via Firebase
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // Implémentation de la déconnexion via Firebase
    throw UnimplementedError();
  }
}