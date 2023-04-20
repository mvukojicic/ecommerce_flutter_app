import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/login/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  // method for handling users upon app start
  StreamBuilder<User?> handleAuthState() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return const HomeScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }

  // method for handling google sign in.
  Future<UserCredential> handleGoogleSignIn() async {
    final googleUser = await GoogleSignIn(scopes: <String>['email']).signIn();
    final googleAuth = await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      idToken: googleAuth?.idToken,
      accessToken: googleAuth?.accessToken,
    );
    return FirebaseAuth.instance.signInWithCredential(credential);
  }

  // method for handling google sign out.
  Future<void> handleGoogleSignOut() {
    return FirebaseAuth.instance.signOut();
  }
}
