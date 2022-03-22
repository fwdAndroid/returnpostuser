
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String uid;
  String email;
  String phonenumber;
  String password;
  String referalcode;
 

  UserModel(
      {required this.uid,
      required this.email,
      required this.password,
      required this.phonenumber,
      required this.referalcode,
      });

  ///Converting OBject into Json Object
  Map<String, dynamic> toJson() => {
        'phonenumber': phonenumber,
        'uid': uid,
        'email': email,
        'password': password,
        'referalcode': referalcode,
        
      };

  ///
  static UserModel fromSnap(DocumentSnapshot snaps){
    var snapshot = snaps.data() as Map<String,dynamic>;

    return UserModel(
    
    uid: snapshot['uid'],
    email: snapshot['email'],
    phonenumber: snapshot['phonenumber'],
    referalcode: snapshot['referalcode'],
    password: snapshot['password'],
   );    
  }    
}
