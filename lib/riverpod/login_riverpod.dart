import 'package:flutter/material.dart';
import 'package:oneloc_case_study/pages/statepage.dart';
import '../services/service.dart';

class LoginRiverpod extends ChangeNotifier{
  final service= Service();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void fetch(){
    service.loginCall(email: email.text, password: password.text).then((value){
      if(value!= null ){
        HomePage();
      }else{
         SnackBar(
            content: Text('Bir sorun oluştu tekrar deneyin.'),
            backgroundColor: Colors.red,
        );
      }
    });
  }

}