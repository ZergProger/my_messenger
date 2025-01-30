import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService {
  static final FirebaseService _singleton =
      FirebaseService._internal();
  factory FirebaseService() => _singleton;
  FirebaseService._internal();

  final auth = FirebaseAuth.instance;
  final currentUser = FirebaseAuth.instance.currentUser;

  onLogin() async {}

  onRegister(String email, String password) async {
    try {
      final credential =
          await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  logOut() async {
    await auth.signOut();
  }

  verifyEmail() async {}
}
