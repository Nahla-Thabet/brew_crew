import 'package:brew_crew/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices{

  final FirebaseAuth _auth= FirebaseAuth.instance;

  // create MyUser object based on User
  MyUser? _userfromFirebase(User user) {
    return user != null ? MyUser(uid:user.uid): null ;
  }

  //sign in Anon
 Future signInAnon() async {
   try{
      UserCredential userCredential = await _auth.signInAnonymously();
      User? user= userCredential.user;
      return _userfromFirebase(user!) ;
   // ignore: empty_catches
   } catch(error){
     print (error.toString());
     return null;

   }
 }




}