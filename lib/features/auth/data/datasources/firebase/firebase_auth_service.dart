import 'package:firebase_auth/firebase_auth.dart';
import '../../interfaces/auth_service.dart';

class FirebaseAuthService implements AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<void> signIn(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print('Connexion réussie via Firebase');
    } on FirebaseAuthException catch (e) {
      print('Erreur de connexion: ${e.message}');
      throw _handleFirebaseAuthException(e);
    }
  }

  @override
  Future<void> signUp(String email, String password) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print('Inscription réussie via Firebase');
    } on FirebaseAuthException catch (e) {
      print('Erreur d\'inscription: ${e.message}');
      throw _handleFirebaseAuthException(e);
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
      print('Déconnexion réussie via Firebase');
    } catch (e) {
      print('Erreur de déconnexion: $e');
      throw Exception('Échec de la déconnexion');
    }
  }

  Exception _handleFirebaseAuthException(FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        return Exception('Aucun utilisateur trouvé pour cet email.');
      case 'wrong-password':
        return Exception('Mot de passe incorrect.');
      case 'invalid-email':
        return Exception('L\'adresse email est invalide.');
      case 'user-disabled':
        return Exception('Ce compte utilisateur a été désactivé.');
      case 'email-already-in-use':
        return Exception('Un compte existe déjà pour cet email.');
      case 'operation-not-allowed':
        return Exception('L\'opération n\'est pas autorisée.');
      case 'weak-password':
        return Exception('Le mot de passe fourni est trop faible.');
      default:
        return Exception('Une erreur s\'est produite: ${e.message}');
    }
  }
}