import 'package:flutter/material.dart';
import '../services/service.dart';
import '../widgets.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final registerservice= RegisterService();

  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phoneNumbercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();


  void _registerUser() async {
    try {
      await registerservice.registerCall(
        username: usernamecontroller.text,
        email: emailcontroller.text,
        phoneNumber: phoneNumbercontroller.text,
        password: passwordcontroller.text,
      );
      Navigator.pushReplacementNamed(context, '/login');
    } catch (e) {
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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:const Icon(Icons.arrow_back_ios,), onPressed:() => Navigator.of(context).pop(),) ,
        title: const Text('Yeni hesap oluştur', style: TextStyle(fontSize:21,fontWeight: FontWeight.bold),) ,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
            children: [
              SizedBox(height: 30,),
              RichText(
                text: const TextSpan(
                  text: 'Hemen yeni bir hesap oluştur ve en iyi ',
                  style: TextStyle(fontSize: 26),
                  children: <TextSpan>[
                    TextSpan(text: 'deneyimi yaşa!', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              ContainerWidget(controller: usernamecontroller ,labelText:'Kullanıcı adı',),
               const SizedBox(height: 25),
              ContainerWidget(controller: emailcontroller,labelText:'E-posta adresi',),
               const SizedBox(height: 25),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     width: 112,
                     height: 60,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                     ),
                     child: Row(

                       children: [
                         Image.asset('assets/images/flag.png'),
                         Text('+90', style: TextStyle(fontSize: 15),)
                       ],
                     ),
                   ),SizedBox(width: 10,),     Container(
                     width: 200,
                     height: 60,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),   ),
                     child:TextField(
                       controller: phoneNumbercontroller,
                       style: TextStyle(color: Color(0xff525252)),
                       decoration: InputDecoration(
                           labelText: 'Telefon numarası',
                           border: InputBorder.none),
                     ),
                   )
                 ],
               ),
               
               const SizedBox(height: 25),
              ContainerWidget(controller: passwordcontroller,labelText:'Şifre',),

               const SizedBox(height: 30),
               Container(
                 height: 60,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Color(0xff0076FF)
                 ),
                 child: Center(
                   child: TextButton(onPressed:
                  //var result = await Provider.of<RegisterRiverpod>(context, listen:false).fetch();  //.of<RegisterRiverpod>(context,listen:false);
                    _registerUser,
                     child: Text("Hesabı oluştur",style: TextStyle(fontSize:21,decoration: TextDecoration.none ),),),
                 ),
               ),
               SizedBox(height: 15,),
               Center(child: TextButton(onPressed: () {

                 Navigator.pushNamed(context,'/login');
               },
                 child: Text("Giriş yap", style:TextStyle(fontSize: 21,),),),),
                SizedBox(height: 100,),
              FooterWidget(textColor: Colors.black)
            ],
        ),
      ),
    );
  }
}
