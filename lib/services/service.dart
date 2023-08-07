import 'dart:developer';
import 'package:dio/dio.dart';
import '../models/login_model.dart';
import '../models/register_model.dart';
class Service{
  final String baseUrl ="https://case.onelocapp.com/";
  final dio =Dio();

  Future<UserModelLogin?> loginCall({required String email,required String password}) async{
    Map<String,dynamic> json ={
      "email": email,
      "password": password,
    };
  var response = await dio.post(baseUrl + "api/auth/login", data: json);
  if(response.statusCode==200){
    var result = UserModelLogin.fromJson(response.data);
    log("Gelen response => ${response.data}");
    return result;
  }else{
    throw("Request failed. ${response.statusCode}");
  }
 }
}






class RegisterService{
  final String baseUrl ="https://case.onelocapp.com/";
  final dio =Dio();

  Future<UserModelRegister?> registerCall({required String username,required String email,required String phoneNumber,required String password}) async{
    Map<String,dynamic> json ={
      "username": username,
      "email": email,
      "phoneNumber": phoneNumber,
      "password": password,
    };
    var response = await dio.post(baseUrl + "api/auth/register", data: json);
    if(response.statusCode==200){
      var result = UserModelRegister.fromJson(response.data);
      log("Gelen response => ${response.data}");
      return result;
    }else{
      throw("Request failed. ${response.statusCode}");
    }
  }



  // Future<UserModelRegister?> deleteUser(int userId) async {
  //   final String baseUrl ="https://case.onelocapp.com/";
  //   var response = await dio.delete(baseUrl + "api/users/{Id}");
  //
  //     if (response.statusCode == 200) {
  //       log("Kullanıcı başarıyla silindi.");
  //     } else {
  //       throw Exception ("Request failed. ${response.statusCode}");
  //     }
  // }
  //
}
