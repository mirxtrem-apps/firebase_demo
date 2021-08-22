import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseRepository {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  late CollectionReference _userRef;

  FirebaseRepository() {
    _userRef = _firestore.collection("usuarios");
  }

  FirebaseAuth get auth => this._auth;

  CollectionReference get userRef => this._userRef;
}
