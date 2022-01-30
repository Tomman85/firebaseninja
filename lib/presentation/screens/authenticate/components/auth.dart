import 'package:firebase_app/presentation/common/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user obj based on FirebaseUser
  myUser? _userFromFirebaseUser(User user) {
    return myUser(uid: user.uid);
  }

  //auth change user stream
  Stream<myUser?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userFromFirebaseUser(user!));
    // .map(_userFromFirebaseUser);
  }

  //sing in anon
  Future singInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email & password

  //register with email & password

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return;
    }
  }
}
