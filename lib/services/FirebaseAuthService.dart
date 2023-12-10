import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseAuthService {
  FirebaseAuth _authServicev = FirebaseAuth.instance;

  User? getCurrentUser() {
    return _authServicev.currentUser;
  }

  Future<void> signOut() async {
    await _authServicev.signOut();
  }

  Future createUserInFirestore(User user, String name) async {
    DocumentSnapshot doc = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();

    if(!doc.exists) {
      FirebaseFirestore.instance.collection('users').doc(user.uid).set({
        'name': name,
        'email': user.email
      });
    }
  }

  Future<User?> signUpWithEmailandPassword(
      String email, password, BuildContext context) async {
    try {
      UserCredential credential =
          await _authServicev.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user;
    } catch (e) {
      final String errorMessage = e.toString();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
          backgroundColor: Colors.red,
        ),
      );
    }
    return null;
  }

  Future<User?> loginWithEmailandPassword(
      String email, password, BuildContext context) async {
    try {
      UserCredential credential = await _authServicev
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch (e) {
      final String errorMessage = e.toString();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
          backgroundColor: Colors.red,
        ),
      );
    }
    return null;
  }

  Future<User?> getUserDetails() async {
    try {
      User? user = _authServicev.currentUser;
      await user?.reload();
      return user;
    } catch (e) {
      print('Error getting user details: $e');
      return null;
    }
  }
}