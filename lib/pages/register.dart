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

  // FutureBuilder<UserModelRegister?>? (future:userregister, builder:(context,snapshot){
  //   if(snapshot.connectionState==ConnectionState.waiting){
  //     return CircularProgressIndicator();
  // }else if(snapshot.connectionState==ConnectionState.none);
  //   return Container();
  // }else{
  //   if(snapshot.hasData){
  //     return buildData(context)
  // }
  // })
  // void postButton(){
  //   setState(() {
  //     userregister=registerCall();
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      appBar: AppBar(
        leading: IconButton(icon:const Icon(Icons.arrow_back_ios,color: Color(0xff0076FF),), onPressed:() => Navigator.of(context).pop(),) ,
        title: const Text('Yeni hesap oluştur', style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),) ,
        backgroundColor: Colors.white,
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
                  style: TextStyle(fontSize: 26,color: Colors.black),
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
               ContainerWidget( labelText: 'Telefon numarası', controller:phoneNumbercontroller),
               // Container(
               //   decoration: BoxDecoration(
               //     color: Colors.grey.shade400,
               //     borderRadius: BorderRadius.circular(10),
               //   ),
               //   child: const TextField(
               //    // controller: _urlLinkController,
               //     style: TextStyle(color: Colors.black),
               //     decoration: InputDecoration(
               //         labelText: 'Telefon numarası',
               //         border: InputBorder.none),
               //   ),
               // ),
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
                     child: Text("Hesabı oluştur",style: TextStyle(color: Colors.white,fontSize:21,decoration: TextDecoration.none ),),),
                 ),
               ),
               SizedBox(height: 15,),
               Center(child: TextButton(onPressed: () {

                 Navigator.pushNamed(context,'/login');
               },
                 child: Text("Giriş yap", style: TextStyle(color: Colors.black,fontSize: 21),),),),

              FooterWidget(textColor: Colors.black)
            ],
        ),
      ),
    );
  }
}
