import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:returnpostcustomer/modals/user_modals.dart';

class AuthMethods{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

//Get Users Details
Future<UserModel> getUserDetails() async {
   User currentUser = _auth.currentUser!;
   DocumentSnapshot documentSnapshot =await firebaseFirestore.collection('users').doc(currentUser.uid).get();
   return UserModel.fromSnap(documentSnapshot);
}



  //Register User with Add User
 Future <String> signUpUser({
    required String email,
    required String phonenumber,
    required String password,
    required String referalCode,
  }) async{
     String res = 'Some error occured';
     try{
        if (email.isNotEmpty || password.isNotEmpty || phonenumber.isNotEmpty || referalCode.isNotEmpty  ) {
        UserCredential cred =  await _auth.createUserWithEmailAndPassword(email: email, password: password);
        
          //Add User to the database with modal
          UserModel userModel = UserModel(
             password:password,
             phonenumber:phonenumber,
             uid:cred.user!.uid,
             email:email, referalcode: referalCode,
            
            );
          await firebaseFirestore.collection('users').doc(cred.user!.uid).set(userModel.toJson());
          res = 'sucess';
        }
     }catch(e){
       res = e.toString();
     }
     return res;
  }
  ///Login User with Add Useer
  Future <String> loginUpUser({
    required String email,
    required String pass,

  }) async{
     String res = 'Some error occured';
     try{
        if (email.isNotEmpty || pass.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(email: email,password: pass);
         
          res = 'sucess';
        }
     }on FirebaseException catch(e){
        if(e == 'Wrongemail'){
          print(e.message);
        }
         if(e == 'WrongPassword'){
          print(e.message);
        }
        
     }
     
     
     catch(e){
       res = e.toString();
     }
     return res;
  }
}