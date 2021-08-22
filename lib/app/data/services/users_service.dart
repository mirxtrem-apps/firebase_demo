import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_demo/app/data/models/usuario.dart';
export 'package:cloud_firestore/cloud_firestore.dart';

import '../repositories/firebase_repository.dart';

class UsersService extends FirebaseRepository {
  Future<void> addUser(String uid) {
    return userRef.doc(uid).set({"nombre": "gustavo"});
  }

  Future<DocumentSnapshot<UsuarioModel?>> getUser(String uid) {
    return userRef
        .withConverter<UsuarioModel>(
          fromFirestore: (snapshot, _) =>
              UsuarioModel.fromJson(snapshot.data()!),
          toFirestore: (usuario, _) => usuario.toJson(),
        )
        .doc(uid)
        .get();
  }
}
