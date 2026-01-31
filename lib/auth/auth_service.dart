import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  
  //instance of firebase authentication
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in method
  Future<UserCredential> signInWithEmailAndPassword(String email, String password) async {
    return await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  //register method


  //sign out method



}