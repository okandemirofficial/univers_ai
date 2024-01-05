import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:univers_ai/model/user_model.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String?> signUp(
      {required String email,
      required String name,
      required String password,required String phone}) async {
    String result = "error";
    try {
      if (email.isNotEmpty && password.isNotEmpty && name.isNotEmpty && phone.isNotEmpty) {
        UserCredential user = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        UserModel userModel =
            UserModel(name: name, email: email, password: password, phone: phone);
        await _firestore
            .collection("users")
            .doc(user.user?.uid)
            .set(userModel.toMap());
        result = "success";
      }
    } catch (e) {
      return "";
    }
    return result;
  }

  Future<String> login(
      {required String email, required String password}) async {
    String result = "error";
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
      }
      result = "success";
    } catch (e) {
      return "";
    }
    return result;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
