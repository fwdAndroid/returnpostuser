// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:provider/provider.dart';
import 'package:returnpostcustomer/models/usermodel.dart';
import 'package:returnpostcustomer/services/database_services.dart';



class UserProvider extends ChangeNotifier{

  UserModel? _userModel;
  final DataBaseMethods _dataBaseMethods = DataBaseMethods();


  UserModel get getUser => _userModel!;

  Future<void> refreshUser()async{
    UserModel userModel = await _dataBaseMethods.getUserDetails();
    _userModel = userModel;
    notifyListeners();
    
  }
}