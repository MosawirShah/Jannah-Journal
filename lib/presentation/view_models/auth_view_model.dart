import 'package:flutter/cupertino.dart';

class AuthViewModel with ChangeNotifier{

  //Password Obsecure Text
  bool _passwordObsecureText = true;
  bool get passwordObsecureText => _passwordObsecureText;
  void setPasswordObsecureText(bool obsValue){
    _passwordObsecureText = obsValue;
    notifyListeners();
  }

  //Confirm Password Obsecure Text
  bool _confirmPassObsecureText = true;
  bool get confirmPassObsecureText => _confirmPassObsecureText;
  void setConfirmPassObsecureText(bool obsValue){
    _confirmPassObsecureText = obsValue;
    notifyListeners();
  }
}