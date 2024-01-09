import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  //instance of auth & firestore
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore= FirebaseFirestore.instance;

  // get current user
  User? getCurrentUser() {
    return _auth.currentUser;
  }


  //sign in
  Future<UserCredential> signInWithEmailAndPassword(String email, String password) async {
    try {
      //sign in user
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      
      // save user information if it already doesnt exist
      _firestore.collection("Users").doc(userCredential.user!.uid).set({
        'uid': userCredential.user!.uid,
        'email': email,
      });

      return userCredential;
    } on FirebaseAuthException catch(error){
      throw Exception(error.code);
    }
  } 

  //sign up
  Future<UserCredential> signUpWithEmailAndPassword(String email, String password) async {
    try {
      // create user
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);

      // save user information in a separate document
      _firestore.collection("Users").doc(userCredential.user!.uid).set({
        'uid': userCredential.user!.uid,
        'email': email,
      });

      return userCredential;
    } on FirebaseAuthException catch(error) {
      throw Exception(error.code);
    }
  }

  //signout
  Future<void> signOut() async {
    return await _auth.signOut();
  }

}