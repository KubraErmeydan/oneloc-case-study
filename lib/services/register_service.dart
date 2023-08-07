import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/register_model.dart';
//
// class RegisterService{
//   final String url= "/api/auth/register";
//   Future<UserModelRegister?> fetchUsers() async{
//    var res = await  http.get(Uri.parse(url));
//    if(res.statusCode==200){
//      var jsonBody= UserModelRegister.fromJson(jsonDecode(res.body));
//      return jsonBody;
//    }else{
//      print("Request failed. => ${res.statusCode}");
//    }
//   }
// }