import 'package:flutter/material.dart';
import '../models/login_model.dart';
import '../services/service.dart';
import '../widgets.dart';
class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<StatefulWidget> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final service= Service();

  TextEditingController loginemailcontroller = TextEditingController();
  TextEditingController loginpasswordcontroller = TextEditingController();

  void _loginUser() async {
    try {
      String email = loginemailcontroller.text;
      String password = loginpasswordcontroller.text;

      UserModelLogin? user = await service.loginCall(email: email, password: password);

      if (user != null) {
        Navigator.pushReplacementNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Kullanıcı bulunamadı veya şifre hatalı.'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }catch (e) {
      print('Hata oluştu: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bir sorun oluştu tekrar deneyin.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

@override
  Widget build(BuildContext context) {
    //final text = MediaQuery.of(context).platformBrightness == Brightness.dark ?'DarkTheme' : 'LightTheme';
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      appBar: AppBar(
        leading: IconButton(icon:const Icon(Icons.arrow_back_ios,color: Color(0xff0076FF),), onPressed:() => Navigator.of(context).pop(),) ,
        title: const Text('Giriş yap', style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),) ,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
            horizontal: 25,
        ),
        child: Column(
          children: [
            SizedBox(height: 70),
            RichText(
              text: const TextSpan(
                text: 'En iyi deneyimlerin merkezi Omeloc\'a',
                style: TextStyle(fontSize: 26,color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: ' hoş geldin!', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 70),
            ContainerWidget( controller: loginemailcontroller,labelText:'E-posta adresi',),
            const SizedBox(height: 10),
            ContainerWidget( controller: loginpasswordcontroller,labelText:'Şifre',),
            const SizedBox(height: 20),
            const Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [Text(
                'Şifremi unuttum',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ), Icon(Icons.arrow_forward_ios_rounded, size: 15,)
              ],),
            const SizedBox(height: 20),
            TextButtonContainerWidget( text: 'Giriş yap', onPressed:_loginUser ,),
            SizedBox(height: 15,),
            Center(child: TextButton(onPressed: () {
              Navigator.pushNamed(context,'/register');
            },
              child: Text("Yeni hesap oluştur", style: TextStyle(color: Colors.black,fontSize: 16),),),),

            FooterWidget(textColor: Colors.black)
          ],
        ),
      ),
    );
  }
}
