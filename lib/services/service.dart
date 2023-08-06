import 'dart:developer';
import 'package:dio/dio.dart';
import '../models/login_model.dart';

class Service{
  final String baseUrl ="https://case.onelocapp.com/swagger/v1/swagger.json/";
  final dio =Dio();

  Future<UserModelLogin?> loginCall({required String email,required String password}) async{
    Map<String,dynamic> json ={
      "email": email,
      "password": password
    };
  var response = await dio.post(baseUrl + "login", data: json);
  if(response.statusCode==200){
    var result = UserModelLogin.fromJson(response.data);
    log("Gelen response => ${response.data}");
    return result;
  }else{
    throw("Request failed. ${response.statusCode}");
  }
 }
}