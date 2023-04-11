import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase {
  User? get currentUser;
  Future<User?> signInAnonymously();
  Future<bool> signInWithEmailAndPassword(String email, String password);
  Future<void> signOut();
  bool showError();
  void resetError();
}

class Auth implements AuthBase {
  bool error = false;
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  User? get currentUser => _firebaseAuth.currentUser;

  @override
  Future<User?> signInAnonymously() async {
    final userCredential = await _firebaseAuth.signInAnonymously();
    return userCredential.user;
  }

  @override
  Future<bool> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      // return userCredential.user?.uid;
      return true;
    } on FirebaseAuthException catch (e) {
      // error = true;
      // return e.code;
      return false;
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  bool showError(){
    return error;
  }

  @override
  void resetError(){
    error = false;
  }
}
